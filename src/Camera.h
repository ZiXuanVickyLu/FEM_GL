//
// Created by birdpeople on 1/12/22.
//
#ifndef FEM_CAMERA_H
#define FEM_CAMERA_H
#include <Eigen/Core>
using namespace Eigen;
class Camera{
public:
    Camera(Vector3f center,Vector3f lowerCorner, Vector3f higherCorner);
    void calculate_viewMatrix();
    ~Camera() = default;

private:
    Vector3f position;
    Vector3f target;
    Vector3f forward;
    Vector3f upDir;
    Vector3f left;
    Vector3f up;

    float proj_l = -1;
    float proj_r = 1;
    float proj_t = 1;
    float proj_b = -1;
    float proj_n = 1;
    float proj_f = 10000;
    Matrix4f viewMatrix;
    Matrix4f projectMatrix;

};
#endif //FEM_CAMERA_H
