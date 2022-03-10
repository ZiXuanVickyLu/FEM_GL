//
// Created by birdpeople on 2/25/2022.
//

#ifndef FEM_FEMENGINE_H
#define FEM_FEMENGINE_H
#include <iostream>
#include<vector>
#include <Eigen/Core>
#include<Eigen/Dense>

using namespace std;

enum colorMode{
    FORCE_MAGNITUDE = 0,
    FORCE_X,
    FORCE_Y,
    FORCE_Z,
    VELOCITY_MAGNITUDE,
    VELOCITY_X,
    VELOCITY_Y,
    VELOCITY_Z
};


typedef struct boundaryList {
    vector<int> *subFace;
    float data[3];
    bool active;

    boundaryList(vector<int> *sub = nullptr, float d0 = 0.0f, float d1 = 0.0f, float d2 = 0.0f, bool a = true) :
            subFace(sub), active(a) {

        data[0] = d0;
        data[1] = d1;
        data[2] = d2;

    }

}bL;

typedef struct rotationList {
    vector<int> *subFace;
    float norm[3];
    float center[3];
    bool active;

    rotationList(vector<int> *sub = nullptr, float d0 = 0.0f, float d1 = 0.0f, float d2 = 0.0f,  float d3 = 0.0f, float d4 = 0.0f, float d5 = 0.0f ,bool a = true) :
            subFace(sub), active(a) {

        norm[0] = d0;
        norm[1] = d1;
        norm[2] = d2;

        center[0] = d3;
        center[1] = d4;
        center[2] = d5;

    }

}rL;

class FEMengine {
public:
    FEMengine(
            vector<float>*ver,
            vector<int>* face,
            vector<int>* element,
            vector<vector<int>*> *subface = nullptr
              ) : Vertex(ver),Face(face), Element(element),Boundary(subface){

        if(!Boundary) //nullptr
            isSub = false;
        else
            isSub = true;

        this -> init();
    };

    ~FEMengine() = default;

    inline void addForceList(vector<int>*face, float x, float y, float z){
        this -> forceList.emplace_back(bL(face, x,y,z));
        cout<< "Add force boundary at " << face << " with ("
            <<x <<"," << y <<","<< z <<") " <<endl;
    }

    inline void cancelForceList(vector<int>*face) {
        for (auto &e: this->forceList)
            if(e.subFace == face)
            {
                e.active = false;
                break;
            }
        cout<< "Cancel force boundary at " << face << endl;
    }


    inline void addRotateList(vector<int>*face,  float nx, float ny, float nz, float cx, float cy, float cz){
        this -> rotationList.emplace_back(rL(face, nx,ny,nz,cx,cy,cz));
        cout<< "Add rotation boundary at " << face << " with ("
            <<nx <<"," << ny <<","<< nz << cx <<"," << cy <<","<< cz <<") " <<endl;
    }

    inline void cancelRotationList(vector<int>*face) {
        for (auto &e: this->rotationList)
            if(e.subFace == face)
            {
                e.active = false;
                break;
            }
        cout<< "Cancel rotation boundary at " << face << endl;
    }

    inline void addVelocityList(vector<int>*face, float x, float y, float z){
        this -> velocityList.emplace_back(bL(face, x,y,z));
        cout<< "Add velocity boundary at " << face << " with ("
            <<x <<"," << y <<","<< z <<") " <<endl;
    }

    inline void cancelVelocityList(vector<int>*face) {
        for (auto &e: this->velocityList)
            if(e.subFace == face)
            {
                e.active = false;
                break;
            }
        cout<< "Cancel velocity boundary at " << face << endl;
    }

    inline void addPositionList(vector<int>* face, float x, float y, float z) {
        this -> positionList.emplace_back(bL(face, x,y,z));
        cout<< "Add position boundary at " << face << " with ("
            <<x <<"," << y <<","<< z <<") " <<endl;
    }

    inline void cancelPositionList(vector<int>*face) {
        for (auto &e: this->positionList)
            if(e.subFace == face)
            {
                e.active = false;
                break;
            }

        cout<< "Cancel position boundary at " << face << endl;
    }

    void setMethod(){}
    void setFloor(float y){ this -> floor = y; }
    void setDt (float t){ this -> dt = t; }
    void setG(float _g) { this -> g = _g; }
    void setE(float e) { this -> E = e, this -> computeMuLa(); }
    void setNu(float Nu){ this -> nu = Nu, this -> computeMuLa(); }
    void setNodeMass(float M){ this -> nodeMass = M; }
    void setColorLessLarge(float less, float large){ this ->colorLarge = large; this ->colorLess = less;}
    void setDamping(float damp){ this -> damping = damp; }
    void setColorMode(colorMode m){this ->colorM = m;}
    void setColorFreq(int f){this -> colorFrequent = f;}
    void setRebound(float re){this -> rebound = re;}
    void timeIntegrate();


private:
    vector<float> *Vertex;
    vector<int> *Face, *Element;
    vector<vector<int> *> *Boundary;

    unsigned long int BoundaryNum;
    vector<unsigned long int> BoundaryFaceNum;

    unsigned long int    VertexNum = 0,
                    FaceNum = 0,
                    ElementNum = 0;
    float damping = 0.999;
    float dt = 1e-4;
    float g = 10.0f;
    float E = 1e4;
    float nu = 0.4f;
    float floor = -2;
    float nodeMass = 1.0f;
    float colorLess = 0;
    float colorLarge = 10;
    float mu, la;
    bool isSub;
    int colorFrequent = 2;
    float rebound = 0.3;
    vector<float> force;
    vector<float> velocity;
    vector<float> color;
    vector<float> volume;
    vector<Eigen::Matrix3f> B;

    vector<bL> positionList;
    vector<bL> velocityList;
    vector<bL> forceList;
    vector<rL> rotationList;
    colorMode colorM = FORCE_MAGNITUDE;
    long int runtime = 0;

    void init();
    void computeB_Volume();
    void computeForce();
    inline Eigen::Vector3f colorMap(float num);

    inline void computeMuLa(){
        this -> la = E * nu /((1 + nu) * ( 1 - 2 * nu));
        this -> mu = E /( 2 * (1 + nu));
    }

    inline Eigen::Vector3f node(unsigned long int i){
         auto ans = Eigen::Vector3f(
                Vertex -> at(i*6 + 0),
                Vertex -> at(i*6 + 1),
                Vertex -> at(i*6 + 2)
                );
         return ans;
    }

    inline Eigen::Matrix3f D(long int i){
        Eigen::Matrix3f ans;
        Eigen::Vector3f tmp;
        unsigned long int topNode = Element -> at(i * 4 + 3);
        for(int j = 0; j < 3; j++){
            unsigned long int aNode;
            aNode = Element -> at(i * 4 +j);
            tmp = this -> node(aNode) - this -> node(topNode);
            ans.col(j) = tmp;
        }
        return ans;
    }

    inline Eigen::Matrix3f F(long int i){
        return this -> D(i) * this -> B[i];
    }

    inline Eigen::Matrix3f P(long int i){
        auto F_ = this -> F(i);
        auto F_neT = F_.inverse().transpose();
        float J = max(F_.determinant(), 0.0001f);
        Eigen::Matrix3f ans =  this -> mu * (F_ - F_neT) + this -> la * log(J) * F_neT;
        return ans;
        //neohookean
    }

    static inline void colAdd(vector<float> *data, long int index, Eigen::Vector3f const &add) {
        long int bodyEntry = index * 3;
        data->at(bodyEntry + 0) += add(0);
        data->at(bodyEntry + 1) += add(1);
        data->at(bodyEntry + 2) += add(2);
    }

    void handlePosition();
    void handleForce();
    void handleVelocity();
    void handleRotation();
    void assignRotationBoundary(rL Ele, vector<float> *data);
    static inline void assignBoundary(bL Ele, vector<float>* data);
    inline void assignColor(long int vn, Eigen::Vector3f color);
    inline float calcColorMap(long int vn);

};
#endif //FEM_FEMENGINE_H
