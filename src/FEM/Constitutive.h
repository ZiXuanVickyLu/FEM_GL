//
// Created by birdpeople on 3/27/2022.
//

#ifndef FEM_CONSTITUTIVE_H
#define FEM_CONSTITUTIVE_H


#include <Eigen/Core>
#include <vector>

class Material {
public:

    virtual ~Material() = default;
    virtual inline Eigen::Matrix3f P(Eigen::Matrix3f F) = 0;
    virtual void setInit(int i, float x, float y, float z, float weight){}
    virtual void setInit(float e, float Nu){}
    virtual void setInit(int virtual_num){}
};
#endif //FEM_CONSTITUTIVE_H