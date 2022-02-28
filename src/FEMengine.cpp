//
// Created by birdpeople on 2/25/2022.
//

#include "FEMengine.h"

void FEMengine::init(){

    this -> FaceNum = this -> Face -> size() / 3;
    this -> VertexNum = this -> Vertex -> size() / 3;
    this -> ElementNum = this -> Element -> size() / 4;

    this -> B.resize(this -> ElementNum);
    this -> volume.resize(this -> ElementNum);

    this -> force.resize(this -> VertexNum * 3);
    this -> velocity.resize(this -> VertexNum * 3 );
     //those now can be visited as name[]

    if(isSub)
    {
        this -> BoundaryNum = this -> Boundary -> size();
        this -> BoundaryFaceNum.reserve(this -> BoundaryNum );
        this -> positionList.reserve(BoundaryNum/2);
        this -> velocityList.reserve(BoundaryNum/2);
        this -> forceList.reserve(BoundaryNum/2);
        this -> rotationList.reserve(BoundaryNum/2);

        for (auto const &ele: *Boundary)
            BoundaryFaceNum.emplace_back(ele->size());

    }

    this -> computeMuLa();
    this -> computeB_Volume();
    std::cout<<"======= FEMengine dump ======"<< std::endl;
    std::cout << "Initialized!"<< std::endl;

}

void FEMengine::computeB_Volume(){
    long int en = 0;
    for(; en< this -> ElementNum; en++){
        auto d = this -> D(en);
        this -> B[en] = d.inverse();
        this -> volume[en] = abs(d.determinant()) /6 ;
    }

}


void FEMengine::computeForce(){
    long int vn = 0;
    long int en = 0;
    Eigen::Matrix3f H, p;
    int a,top;

    for(; vn < this ->VertexNum; vn++){
        auto bodyIndex =  vn * 3;
        this -> force[bodyIndex + 0] = 0;
        this -> force[bodyIndex + 1] = -1 * this -> g;
        this -> force[bodyIndex + 2] = 0;
    }

    for(; en< this -> ElementNum; en++){
        p = this -> P(en);
        H = -this -> volume[en] * (p * (this -> B[en]).transpose());
        top = this->Element->at(en * 4 + 3);

        for(long int  j = 0; j < 3; j++) {
            a = this->Element->at(en * 4 + j);
            colAdd(&(this->force), a, H.col(j));
            colAdd(&(this->force), top, -1 * H.col(j));
        }

    }


}

inline void FEMengine::assignBoundary(bL Ele, vector<float>* data){

    for(auto ele: *(Ele.subFace)) {
        data->at(ele * 3 + 0) = Ele.data[0];
        data->at(ele * 3 + 1) = Ele.data[1];
        data->at(ele * 3 + 2) = Ele.data[2];
    }

}
void FEMengine::assignRotationBoundary(rL Ele, vector<float> *data){
    Eigen:: Vector3f a, norm, center, res;
    norm << Ele.norm[0], Ele.norm[1], Ele.norm[2];
    center << Ele.center[0], Ele.center[1], Ele.center[2];

    for(auto ele: *(Ele.subFace)) {
       a =  node(ele);
       a -= center;
       res = a.cross(norm);
       for(int j = 0;j<3;j++)
           data ->at(ele * 3 + j) = res(j);
    }
}

void FEMengine::handleForce(){
    if (!this->isSub || this->forceList.empty()) //check empty
        return;

    for(auto forceEle : forceList)
        if(forceEle.active)
            assignBoundary(forceEle, &(this -> force));

}
void FEMengine::handleRotation(){
    if (!this->isSub || this->rotationList.empty()) //check empty
        return;

    for(auto rotationEle : rotationList)
        if(rotationEle.active){
            assignRotationBoundary(rotationEle, &(this -> velocity));
        }

}

void FEMengine::handlePosition(){
    if (!this->isSub || this->positionList.empty()) //check empty
        return;

    for(auto positionEle : positionList)
        if(positionEle.active)
            assignBoundary(positionEle, (this -> Vertex));

}

void FEMengine::handleVelocity(){
    if (!this->isSub || this->velocityList.empty()) //check empty
        return;

    for(auto velocityEle : velocityList)
        if(velocityEle.active) {
            assignBoundary(velocityEle, &(this->velocity));
        }

}

void FEMengine::timeIntegrate(){
    this -> computeForce(); //force boundary assignment
    handleForce();
    //force -> velocity
    for(long int vn = 0; vn< this -> VertexNum; vn++){
        for(int i = 0; i < 3; i++) {
            this->velocity.at(vn * 3 + i) *= this->damping; //damping velocity
            this->velocity.at(vn * 3 + i) +=  this -> force.at(vn * 3 + i) / this -> nodeMass * this -> dt;
        }
    }

    handleVelocity(); // velocity boundary assignment
    handleRotation();
    // velocity -> position
    for(long int vn = 0;vn < this -> VertexNum; vn++){
        for(int i = 0; i < 3; i++) {
            this->Vertex->at(vn * 3 + i) += this -> dt * this -> velocity.at(vn * 3 + i);

            //coordinate y (height, floor collision detection)
            if( i == 1) {
                if (this->Vertex->at(vn * 3 + 1) < this->floor) {
                    this->velocity.at(vn * 3 + 1) = 0;
                    this->Vertex->at(vn * 3 + 1) = this->floor;
                }
            }

        }
    }
    handlePosition(); // vertex position boundary assignment
    std::cout<<"======= FEMengine dump ======"<< std::endl;
    std::cout << "TimeIntegrate!"<< std::endl;

}
