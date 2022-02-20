//
// Created by birdpeople on 1/12/22.
//
#include"Camera.h"

Camera::Camera(Vector3f center,Vector3f lowerCorner, Vector3f higherCorner){
    this -> target = center;
    Vector3f tmp{0,0, 1};
    this -> position = target;
    this -> position[3] += 3 * sqrt(higherCorner - lowerCorner).dot(higherCorner-lowerCorner)
}
void Camera::calculate_viewMatrix(){

}
