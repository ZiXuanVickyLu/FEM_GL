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
        for(int i = 3;i<9;i++)
        {
            if(target == n[i] || target == N[i])
                return num[i];
        }
    }


private:
    std::string path;
    std::string name;
    std::string header;
    int num[9];
    bool isSubFaceLoad  =  false;
    std::vector<float>* Vertex;
    std::vector<int>* Face, * Element;
    std::vector<int>* subFace[6];

    void initLoader();
};

#endif //FEM_TETLOADER_H
