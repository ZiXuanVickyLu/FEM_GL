//
// Created by birdpeople on 2/20/2022.
//

#ifndef FEM_TETLOADER_H
#define FEM_TETLOADER_H

#include<string>
#include<vector>
#include<fstream>
#include <iostream>

extern std::string n[],N[];

class tetLoader {
public:
    /*std::string n[9] = {
        "node", 0
        "face", 1
        "ele", 2
        "down", 3
        "top", 4
        "front", 5
        "back", 6
        "right", 7
        "left", 8
}; */

    tetLoader(std:: string _path,
              std:: string _name,
              std::vector<float>* _Vertex,
              std::vector<int>* _Face,
              std::vector<int>* _Element
              ) : path(_path), name(_name), Vertex(_Vertex), Face(_Face), Element(_Element){
        isSubFaceLoad = false;
        this -> initLoader();
    };
    tetLoader(std:: string _path,
              std:: string _name,
              std::vector<float>* _Vertex,
              std::vector<int>* _Face,
              std::vector<int>* _Element,
              std::vector<std::vector<int> *>* _Boundary
    ) : path(_path), name(_name), Vertex(_Vertex), Face(_Face), Element(_Element), subFace(_Boundary){
        this -> isSubFaceLoad = true;
        this -> subFaceNum = subFace->size();
        this -> initLoader();
        std::cout << "isSubFaceLoad On" << std::endl;
    };

    ~tetLoader() = default;


    bool loadFace();
    bool loadVertex();
    bool loadElement();
    bool loadSubFace(std::string target);
    bool loadAll();

    void dump();


    int getVertexNum(){
        return num[0];
    }
    int getFaceNum(){
        return num[1];
    }
    int getElementNum(){
        return num[2];
    }

    int getSubFaceNum(std::string target){
        for(int i = 3;i < subFaceNum + 3;i++)
        {
            if(target == n[i] || target == N[i])
                return num[i];
        }
    }


private:
    std::string path;
    std::string name;
    std::string header;
    std::vector<int> num;
    unsigned int subFaceNum = 0;
    bool isSubFaceLoad  =  false;
    std::vector<float>* Vertex;
    std::vector<int>* Face, * Element;
    std::vector<std::vector<int>*>* subFace;

    void initLoader();
};

#endif //FEM_TETLOADER_H
