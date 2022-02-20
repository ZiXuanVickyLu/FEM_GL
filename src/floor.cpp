//
// Created by birdpeople on 1/13/22.
//

#include "floor.h"
floor::floor(float height, float scale):
    height(height),
    scale(scale){
    float h = height;
    float k = scale;
    this -> position[0] << -k, h, -k;
    this -> position[1] << k, h, -k;
    this -> position[2] << k, h, k;
    this -> position[3] << -k, h, k;

}

void floor::projection(
        const Matrix4f& viewMatrix,
        const Matrix4f& projectionMatrix){
 for(int i = 0; i<4; i++)
 {
     Vector4f homogenous_position;
     homogenous_position << position[i][0], position[i][1], position[i][2], position[i][3];
     ndc[i] = projectionMatrix * viewMatrix * homogenous_position;
     ndc[i] /= ndc[i][3];
     ndc[i][0] += 1;
     ndc[i][0] /= 2;
     ndc[i][1] += 1;
     ndc[i][1] /= 2;
 }

}