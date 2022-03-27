#include "render/Camera.h"
#include "render/shader_m.h"

//#include "stb_image.h"
#include "loader/tetLoader.h"
#include "imgui_impl_glfw.h"
#include "render/glfwWindow.h"
#include "imgui_impl_opengl3.h"
#include "cubegen/obj.h"
#include"FEM/FEMengine.h"
#include"loader/plyEasyLoader.h"
// settings
const unsigned int SCR_WIDTH = 2400;
const unsigned int SCR_HEIGHT = 1800;

// camera
Camera camera(glm::vec3(0.0f, 1.0/20, 5.0f));
float globalScaler = 50;

// timing
float deltaTime = 0.0f;	// time between current frame and last frame
float lastFrame = 0.0f;

//geometry data structure
std::vector<float> ver;
std::vector<int> face, ele;
std::vector<int> sub[6];
std::vector<std::vector<int>*> boundary;

long unsigned int frame = 0;

int main()
{
//    //generate cube mesh
//    auto c = cube(6,10,60,1,1,1,-3,-3,0);
//    c.fileroot("../reference/");
//       c.print_all();

//load mesh
    for(auto & i : sub){
        boundary.emplace_back(&i);
    }

    tetLoader t("../reference/" ,"bar101050", &ver, &face, &ele,&boundary);
    t.loadAll();


// set ply exporter
    auto frameLoader = plyEasyLoader(&ver, &face, "cube");

    camera.MovementSpeed /= 2 ;

    glfwWindow window = glfwWindow(SCR_WIDTH, SCR_HEIGHT, "FEM_GL");
    window.glfwWindowInit();

//    //creat FEM engine
    auto fem = FEMengine(&ver, &face, &ele,&boundary);
    fem.setG(10);
    fem.setFloor(-10);
    fem.setConstitutive(VIRTUAL_FIBER);
    fem.addRotateList(boundary.at(1),0,1,0,0,0,0);
    fem.addRotateList(boundary.at(0),0,-1,0,0,0,0);
//    fem.addRotateList(boundary.at(4),0,1,0,0,1,0);
//    fem.addRotateList(boundary.at(3),0,1,0,0,1,0); //front
//    fem.addRotateList(boundary.at(2),0,1,0,0,1,0);
//    fem.addRotateList(boundary.at(5),0,1,0,0,1,0);
    fem.setDamping(0.999);
    fem.setColorLessLarge(0,600);
    fem.setDt( 1e-3);
    fem.setG(0);
    fem.setColorMode(FORCE_MAGNITUDE);
//    fem.addVelocityList(boundary.at(4),-1,0,0);
//    fem.addVelocityList(boundary.at(5),1,0,0);

    // configure global opengl state
    // -----------------------------
    glEnable(GL_DEPTH_TEST);

    //imgui
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO &io = ImGui::GetIO();
    // Setup Platform/Renderer bindings
    ImGui_ImplGlfw_InitForOpenGL(window.getWindow(), true);
    ImGui_ImplOpenGL3_Init();
    // Setup Dear ImGui style
    ImGui::StyleColorsDark();

    // build and compile our shader zprogram
    // ------------------------------------
    const char* v = "../src/shader/cameraColor.vs";
    const char* f = "../src/shader/cameraColor.fs";
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
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), nullptr);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)(3* sizeof(float)));
    glEnableVertexAttribArray(1);

    // render loop
    // -----------
    while (!glfwWindowShouldClose(window.getWindow()))
    {
        ++frame;
        //imgui
        // feed inputs to dear imgui, start new frame
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();
        // per-frame time logic
        // --------------------
        float currentFrame = static_cast<float>(glfwGetTime());
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;

        std::cout << 1/deltaTime << endl;
        std::string s = std::to_string(1/deltaTime);
        s += " fps ";
        glfwSetWindowTitle(window.getWindow(),(char *)s.c_str());

        // dynamic for the coordinate of object
        fem.timeIntegrate();

        //if(frame % 15 == 0)
            //frameLoader.genFrame();

        // render your GUI
        t.dumpScreen();
        ImGui::Begin("Simulation Statistic");
        ImGui::Text("Color Mode");
        ImGui::End();


        //rebind data buffer
        //position
        glBufferData(GL_ARRAY_BUFFER, ver.size() * sizeof(float)  , &ver[0], GL_DYNAMIC_DRAW);

        // input process for glfwWindow
        // -----
        window.input();

        // render
        // ------
        glClearColor(0.1f, 0.1f, 0.1f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        glPolygonMode(GL_FRONT_AND_BACK, GL_POLYGON);


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
        ImGui::Render();
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

         window.display();
         window.pollEvent();
    }

    // optional: de-allocate all resources once they've outlived their purpose:
    // ------------------------------------------------------------------------
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glDeleteBuffers(1, &EBO);

    //imgui

    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();
    return 0;

}//end main



