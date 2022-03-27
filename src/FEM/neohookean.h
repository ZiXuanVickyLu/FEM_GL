//
// Created by birdpeople on 3/27/2022.
//

#ifndef FEM_NEOHOOKEAN_H
#define FEM_NEOHOOKEAN_H

#include<cmath>
#include"Constitutive.h"
class neohookean :public Material{
public:
    neohookean(){
        this -> computeMuLa();
    }
    inline Eigen::Matrix3f P(Eigen::Matrix3f F) override{
        const auto& F_ = F;
        auto F_neT = F_.inverse().transpose();
        auto J = (float) fmax(F_.determinant(), 0.0001f);
        Eigen::Matrix3f ans =  this -> mu * (F_ - F_neT) + this -> la * log(J) * F_neT;
        return ans;
        //neohookean
    }
    virtual void setInit(float e, float Nu) override {
        this -> setE(e);
        this -> setNu(Nu);
    }

private:
    void setE(float e) { this -> E = e, this -> computeMuLa(); }
    void setNu(float Nu){ this -> nu = Nu, this -> computeMuLa(); }
    float E = 1e4;
    float nu = 0.4f;
    float mu, la;
    inline void computeMuLa(){
        this -> la = E * nu /((1 + nu) * ( 1 - 2 * nu));
        this -> mu = E /( 2 * (1 + nu));
    }

};


#endif //FEM_NEOHOOKEAN_H
