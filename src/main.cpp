#include<iostream>
#include "render/Camera.h"
#include "render/shader_m.h"
//#include "stb_image.h"
#include "loader/tetLoader.h"
#include "render/glfwWindow.h"
#include "cubegen/obj.h"
#include"FEMengine.h"

// settings
const unsigned int SCR_WIDTH = 1200;
const unsigned int SCR_HEIGHT = 900;

// camera
Camera camera(glm::vec3(0.0f, 1.0f, 7.0f));
float globalScaler = 10;

// timing
float deltaTime = 0.0f;	// time between current frame and last frame
float lastFrame = 0.0f;
std::vector<float> ver;
std::vector<int> face, ele;
std::vector<int> sub[6];
std::vector<std::vector<int>*> boundary;

int main()
{
//    //generate cube mesh
//    auto c = cube(10,10,10,1,1,1,-5,-5,10);
//    c.fileroot("../reference/");
//       c.print_all();

//load
    for(auto & i : sub){
        boundary.emplace_back(&i);
    }

    tetLoader t("../reference/" ,"bar101050", &ver, &face, &ele,&boundary);
    t.loadAll();
    t.dump();


    camera.MovementSpeed /= 2 ;

    glfwWindow window = glfwWindow(SCR_WIDTH, SCR_HEIGHT, "FEM_GL");
    window.glfwWindowInit();

//    //creat FEM engine
    auto fem = FEMengine(&ver, &face, &ele,&boundary);
    fem.setE(10000);
    fem.setG(20);
    fem.addRotateList(boundary.at(1),0,1,0,0,0,0);
    fem.addRotateList(boundary.at(0),0,-1,0,0,0,0);
//fem.addVelocityList(boundary.at(4),5,0,0);
//fem.addVelocityList(boundary.at(5),-5,0,0);
    fem.setDamping(0.999);
    fem.setDt(3*1e-3);
    // configure global opengl state
    // -----------------------------
    glEnable(GL_DEPTH_TEST);


    // build and compile our shader zprogram
    // ------------------------------------
    const char* v = "../src/shader/camera.vs";
    const char* f = "../src/shader/camera.fs";
    Shader ourShader(v, f);


    // world space positions of our cubes
    glm::vec3 cubePositions[] = {
            glm::vec3( 0.0f,  0.0f,  0.0f),
    };

    unsigned int VBO, VAO, EBO;
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, ver.size()*sizeof(float), &(ver[0]), GL_DYNAMIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, face.size() * sizeof(int), &face[0], GL_STATIC_DRAW);

    // position attribute
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);


    // render loop
    // -----------
    while (!glfwWindowShouldClose(window.getWindow()))
    {
        // per-frame time logic
        // --------------------
        float currentFrame = static_cast<float>(glfwGetTime());
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;

        // dynamic for the coordinate of object
        fem.timeIntegrate();

        //rebind data buffer
        glBufferData(GL_ARRAY_BUFFER, ver.size() * sizeof(float)  , &ver[0], GL_DYNAMIC_DRAW);

        // input process for glfwWindow
        // -----
        window.input();

        // render
        // ------
        glClearColor(0.0f, 0.3f, 0.3f, 0.5f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);


        // activate shader
        ourShader.use();

        // pass projection matrix to shader (note that in this case it could change every frame)
        glm::mat4 projection = glm::perspective(glm::radians(camera.Zoom), (float)SCR_WIDTH / (float)SCR_HEIGHT, 0.1f, 100.0f);
        ourShader.setMat4("projection", projection);

        // camera/view transformation
        glm::mat4 view = camera.GetViewMatrix();
        ourShader.setMat4("view", view);

        // render boxes
        glBindVertexArray(VAO);
        for (unsigned int i = 0; i < 1; i++)
        {

            // calculate the model matrix for each object and pass it to shader before drawing
            glm::mat4 model = glm::mat4(1.0f); // make sure to initialize matrix to identity matrix first
            glm::vec3 s = glm::vec3(1/globalScaler);
            model = glm::translate(model, cubePositions[i]);
            model = glm::scale(model,s);
            ourShader.setMat4("model", model);


            glDrawElements(GL_TRIANGLES, face.size(), GL_UNSIGNED_INT, nullptr);

        }

        // glfw: swap buffers and poll IO events (keys pressed/released, mouse moved etc.)
        // -------------------------------------------------------------------------------
         window.display();
         window.pollEvent();
    }

    // optional: de-allocate all resources once they've outlived their purpose:
    // ------------------------------------------------------------------------
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glDeleteBuffers(1, &EBO);

    return 0;

}//end main


