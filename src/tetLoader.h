//
// Created by birdpeople on 2/20/2022.
//

#ifndef FEM_TETLOADER_H
#define FEM_TETLOADER_H

#include<string>
#include<vector>
#include<fstream>
#include <iostream>

class tetLoader {
public:

    tetLoader(const char * _path,
              std::vector<float>& _Vertex,
              std::vector<int>& _Face,
              std::vector<int>& _Element
              ) : path(_path), Vertex(_Vertex), Face(_Face), Element(_Element){};

    ~tetLoader() = default;

    void initLoader();
    bool loadFace();
    bool loadVertex();
    bool loadElement();
    bool loadSubFace(std::string target);

    bool loadAll();

    void dump();

    int getVertexNum(){
        return vertexNum;
    }
    int getFaceNum(){
        return faceNum;
    }
    int getElementNum(){
        return elementNum;
    }

    int getSubFaceNum(std::string target){

        if(target == "lower") return lowerFaceNum;
        if(target == "right") return rightFaceNum;
        if(target == "left") return leftFaceNum;
        if(target == "top") return topFaceNum;
        if(target == "front") return frontFaceNum;
        if(target == "back") return backFaceNum;
    }

private:
    const char* path;
    int vertexNum = 0,
    faceNum = 0,
    elementNum = 0,
    lowerFaceNum = 0,
    rightFaceNum = 0,
    leftFaceNum = 0,
    topFaceNum = 0,
    frontFaceNum = 0,
    backFaceNum = 0;
    bool isSubFaceLoad  =  false;
    std::vector<float> Vertex;
    std::vector<int> Face, Element, lowerF, rightF, leftF, topF, frontF, backF;
};

#endif //FEM_TETLOADER_H
