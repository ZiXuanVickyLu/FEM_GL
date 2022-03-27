//
// Created by birdpeople on 3/27/2022.
//

#ifndef FEM_VIRTUAL_FIBER_H
#define FEM_VIRTUAL_FIBER_H

#include "Constitutive.h"

class virtual_fiber: public Material{
public:
    virtual_fiber(){
        out_product.resize(3);
        fiber.resize(3);
        weight.resize(3);
        fiber[0]<<1,0,0;
        fiber[1]<<0,1,0;
        fiber[2]<<0,0,1;
        weight[0] = 200, weight[1] = 200, weight[2] = 200;
        for(int i = 0;i<3;i++)
            out_product[i] = fiber[i] * fiber[i].transpose();

    }

    inline Eigen::Matrix3f P(Eigen::Matrix3f F_) override{
        auto F = F_;
        auto F_neT = F.inverse().transpose();
        auto J = F.determinant();
        Eigen::Matrix3f ans1 = Eigen::Matrix3f::Zero(3,3);
        Eigen::Matrix3f ans2 = Eigen::Matrix3f::Zero(3,3);
        Eigen::Matrix3f ans3 = F_neT ;
        for(int i = 0;i<fiber_num;i++){
            ans1 += 4 * weight[i] * (lambda(i,F) - 1) * F * out_product[i];
        }
        for(int m = 0; m < fiber_num/3; m++){
           int i = m * 3 + 0;
           int j = m * 3 + 1;
           int k = m * 3 + 2;
           auto bij = beta(i, j, F);
           auto bjk = beta(j, k, F);
           auto bik = beta(i, k, F);
           ans2 += weight[i] * weight[j] * ( pow(bij,4) * (-outerBarEta(i,F) - outerBarEta(j, F)) + pow(bij,3) * symEta(i,j,F));
           ans2 += weight[i] * weight[k] * ( pow(bik,4) * (-outerBarEta(i,F) - outerBarEta(k, F)) + pow(bik,3)* symEta(i,k,F));
           ans2 += weight[k] * weight[j] * ( pow(bjk,4) * (-outerBarEta(j,F) - outerBarEta(k, F)) + pow(bjk,3) * symEta(j,k,F));

        }
        ans2 =  2 * ans2 * F_neT;

        float para = 0;
        for (int i = 0;i < fiber_num/3;i++)
                para +=  0.01f * weight[i * 3 + 0] * weight[i * 3 + 1] * weight[i * 3 +2];

        ans3 *= 2 * para * J * (J -1);
        auto ans = W * ( 0.2 * ans1 +  0.2 * ans2 + 0.01 * ans3 );
        return ans;
    }

    virtual void setInit(int num) override{
        fiber_num = num;
        out_product.resize(num);
        fiber.resize(num);
        weight.resize(num);
    }
    virtual void setInit(int i, float x, float y, float z, float wei) override{
        fiber[i] = Eigen::Vector3f(x,y,z);
        fiber[i].normalize();
        weight[i] = wei;
        out_product[i] = fiber[i] * fiber[i].transpose();
    }

private:
    int fiber_num = 3;
    float W = 1;
    std::vector <Eigen::Matrix3f> out_product;
    std::vector <Eigen::Vector3f> fiber;
    std::vector <float> weight;
    inline Eigen::Vector3f eta(int i, Eigen::Matrix3f F){
        return F * fiber[i];
    }

    inline Eigen::Vector3f barEta(int i, Eigen::Matrix3f F){
        Eigen::Vector3f eta = F * fiber[i];
        float n = eta.norm();
        eta /= n;
        return eta;
    }

    inline float lambda(int i, Eigen::Matrix3f F){
        float lam;
        lam = eta(i,F).transpose() * eta(i,F);
        return lam;
    }
    inline Eigen::Matrix3f outerBarEta(int i, Eigen::Matrix3f F){
        auto e = barEta(i, F);
        auto ans  = e * e.transpose();
        return ans;
    }

    inline float beta(int i, int j, Eigen::Matrix3f F){
        float b;
        b = barEta(i,F).transpose() * barEta(j,F);
        return b;
    }

    inline Eigen::Matrix3f symEta(int i, int j, Eigen::Matrix3f F)
    {
        auto ei = barEta(i,F);
        auto ej = barEta(j,F);
        auto ei_ej = ei * ej.transpose();
        auto ej_ei = ei_ej.transpose();
        auto ans = ei_ej + ej_ei;
        return ans;
    }
};


#endif //FEM_VIRTUAL_FIBER_H
