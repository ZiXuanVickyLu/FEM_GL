//
// Created by birdpeople on 2/21/2022.
//

#ifndef FEM_GLFWWINDOW_H
#define FEM_GLFWWINDOW_H

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include "Camera.h"

extern float lastX, lastY;
extern bool rotateOn;

class glfwWindow {
public:
    glfwWindow( const unsigned int _SCR_WIDTH = 1200,
                const unsigned int _SCR_HEIGHT = 900,
                const char* _title = "FEM_GL") :
                SCR_WIDTH(_SCR_WIDTH), SCR_HEIGHT(_SCR_HEIGHT),title(_title){
        lastX = (float) SCR_WIDTH / 2;
        lastY = (float) SCR_HEIGHT / 2;
    };

    ~glfwWindow();

    bool glfwWindowInit();

    void loop();

    GLFWwindow* getWindow(){
        return window;
    }
    unsigned int getWidth() { return SCR_WIDTH; }
    unsigned int getHeight() { return SCR_HEIGHT; }
private:
    const unsigned int SCR_WIDTH = 1200;
    const unsigned int SCR_HEIGHT = 900;
    const char* title;
    GLFWwindow* window;

    bool createWindow();

    static void framebuffer_size_callback (GLFWwindow* window, int width, int height) ;
    static void mouse_callback(GLFWwindow* window, double xpos, double ypos);
    static void scroll_callback(GLFWwindow* window, double xoffset, double yoffset);
    static void mouse_button_callback(GLFWwindow* window, int button, int action, int mods);

    void processInput(GLFWwindow *window);

};


#endif //FEM_GLFWWINDOW_H
