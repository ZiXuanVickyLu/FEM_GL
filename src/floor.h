//
// Created by birdpeople on 1/13/22.
//

#ifndef FEM_FLOOR_H
#define FEM_FLOOR_H
#include <Eigen/Core>
using namespace Eigen;

class floor {
public:
    explicit floor(float height = 0, float scale = 1);
    ~floor() = default;
    void projection(Matrix4f const & viewMatrix, Matrix4f const & projectionMatrix);

private:
    Vector3f position[4];
    Vector4f ndc[4];
    float height;
    float scale;

};


#endif //FEM_FLOOR_H
