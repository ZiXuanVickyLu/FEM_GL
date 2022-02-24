#include<iostream>
#include "render/Camera.h"
#include "render/shader_m.h"
//#include "stb_image.h"
#include "loader/tetLoader.h"
#include "render/glfwWindow.h"
#include "cubegen/obj.h"

// settings
const unsigned int SCR_WIDTH = 1200;
const unsigned int SCR_HEIGHT = 900;

// camera
Camera camera(glm::vec3(0.0f, 0.0f, 3.0f));

// timing
float deltaTime = 0.0f;	// time between current frame and last frame
float lastFrame = 0.0f;
std::vector<float> ver;
std::vector<int> face, ele;
int main()
{
//    generate cube mesh
//    cube c = cube(1,1,1,1,1,1,0,0,0);
//    c.fileroot("../reference/");
//    c.print_all();

//load
    tetLoader t("../reference/" ,"bar111", &ver, &face, &ele);
    t.loadAll();
    t.dump();


    glfwWindow window = glfwWindow(SCR_WIDTH, SCR_HEIGHT, "FEM_GL");
    window.glfwWindowInit();


    // configure global opengl state
    // -----------------------------
    glEnable(GL_DEPTH_TEST);

    // build and compile our shader zprogram
    // ------------------------------------
    const char* v = "../src/shader/camera.vs";
    const char* f = "../src/shader/camera.fs";
    Shader ourShader(v, f);

    // set up vertex data (and buffer(s)) and configure vertex attributes
    // ------------------------------------------------------------------
    float vertices[] = {
            0.000000f,	0.000000f,	0.000000f,
            	0.000000f,	0.000000f,	1.000000f,
            	1.000000f,	0.000000f,	1.000000f,
            	1.000000f,	0.000000f,	0.000000f,
            	0.000000f,	1.000000f,	0.000000f,
            	0.000000f,	1.000000f,	1.000000f,
            	1.000000f,	1.000000f,	1.000000f,
            	1.000000f,	1.000000f,	0.000000f,
            };

    unsigned int indices[] = {
            5,6,8,6,8,1,8,1,5,1,5,6,
            	//5	6	8	1

                6,7,8,7,8,1,8,1,6,1,6,7,
            	//6	7	8	1

                6,2,3,2,3,1,3,1,6,1,6,2,
            	//6	2	3	1

                6,3,7,3,7,1,7,1,6,1,6,3,
            	//6	3	7	1

                7,3,8,3,8,1,8,1,7,1,7,3,
            	//7	3	8	1

                3,4,8,4,8,1,8,1,3,1,3,4
            	//3	4	8	1

    };

    for(unsigned int & indice : indices)
        --indice;

    // world space positions of our cubes
    glm::vec3 cubePositions[] = {
            glm::vec3( 0.0f,  -1.0f,  0.0f),
    };

    unsigned int VBO, VAO, EBO;
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_DYNAMIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
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
        vertices[0] = (rand()%2) * 0.5f;
        //rebind data buffer
        glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_DYNAMIC_DRAW);

        // input process for glfwWindow
        // -----
        window.loop();

        // render
        // ------
        glClearColor(0.0f, 0.3f, 0.3f, 0.5f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);


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
            model = glm::translate(model, cubePositions[i]);
            float angle = 20.0f * i;
            model = glm::rotate(model, glm::radians(angle), glm::vec3(1.0f, 0.3f, 0.5f));
            ourShader.setMat4("model", model);

            glDrawElements(GL_TRIANGLES, 72, GL_UNSIGNED_INT, nullptr);
        }

        // glfw: swap buffers and poll IO events (keys pressed/released, mouse moved etc.)
        // -------------------------------------------------------------------------------
        glfwSwapBuffers(window.getWindow());
        glfwPollEvents();
    }

    // optional: de-allocate all resources once they've outlived their purpose:
    // ------------------------------------------------------------------------
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glDeleteBuffers(1, &EBO);

    return 0;

}//end main


