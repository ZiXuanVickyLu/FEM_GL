//
// Created by birdpeople on 2/20/2022.
//

#include "tetLoader.h"

std::string N[9] = {
        "Vertex",
        "Face",
        "Element",
        "Down Face",
        "Top Face",
        "Front Face",
        "Back Face",
        "Right Face",
        "Left Face"
};
std::string n[9] = {
        "node",
        "face",
        "ele",
        "down",
        "top",
        "front",
        "back",
        "right",
        "left"
};

void tetLoader::initLoader(){
    this -> header = path +  name + ".1.";
    this -> num.resize(3 + subFaceNum);
    for(int i = 0; i < num.size(); i++){
        std::ifstream tmp(this -> header + n[i]);
        if(!tmp.is_open()){
            std::cout << "Not Find " << N[i] << " File" <<std::endl;
            continue;
        }
        std::cout << "Find " << N[i] << " File" << std::endl;
        tmp >> this->num[i];
        tmp.close();
    }

}

bool tetLoader::loadFace(){
    std::ifstream file;
    file.open(this->header + n[1]);

    if(!file.is_open()){
        std::cout << "Open Failed!" << std::endl;
    }
    else {
        int tmp;
        file >> tmp, file >> tmp;
        Face->reserve(num[1] * 3);
        int s = 0;
        while (file >> tmp) {
            if (s % 4)
                Face->push_back(tmp-1);

            ++s;
        }
        file.close();
        return true;
    }
    return false;
}

bool tetLoader::loadVertex(){
    std::ifstream file;
    file.open(this->header + n[0]);

    if(!file.is_open()){
        std::cout << "Open Failed!" << std::endl;
    }
    else {
        int tmp;
        file >> tmp, file >> tmp, file >> tmp, file >> tmp;
        float t;
        Vertex->reserve(num[0] * 6);
        int s = 0;
        int tri = 0;
        while (file >> t) {
            if (s % 4) {
                Vertex->push_back(t);
                ++ tri;
                if(tri % 3 == 0)
                    Vertex->push_back(0.0f),
                    Vertex->push_back(0.0f),
                    Vertex->push_back(1.0f);
            }
            ++s;
        }
        file.close();
        return true;
    }
    return false;

}

bool tetLoader::loadElement(){
    std::ifstream file;
    file.open(this->header + n[2]);

    if(!file.is_open()){
        std::cout << "Open Failed!" << std::endl;
    }
    else {
        int tmp;
        file >> tmp, file >> tmp, file >> tmp;
        Element->reserve(num[2] * 4);
        int s = 0;
        while (file >> tmp) {
            if (s % 5)
                Element->push_back(tmp-1);

            ++s;
        }
        file.close();
        return true;
    }
    return false;
}

bool tetLoader::loadAll(){
    bool res =  true;
    res &= this-> loadVertex() ;
    res &= this ->loadFace() ;
    res &= this->loadElement();
    if(isSubFaceLoad)
        for (int i = 3; i < num.size() ;i++)
            res &= this->loadSubFace(n[i]);
    return res;
}

bool tetLoader::loadSubFace(std::string target){
    int file_index = -1;
    for(int i = 3;i < num.size();i++)
        if(n[i] == target || N[i] == target)
            file_index = i;
    // (file_index :-1 / 3-8)
    if(file_index > 0 && num[file_index] != 0)
    {
        std::ifstream file;
        std::string path_ = this -> header + n[file_index];
        file.open(path_);
        if(!file.is_open()){
            std::cout << "Open Failed!" << std::endl;
        }
        else{
            int tmp;
            file >> tmp, file >> tmp;
            subFace-> at(file_index-3)->reserve(num[file_index] * 3);
            int s = 0;
            while(file>>tmp){
                if(s%4)
                    subFace->at(file_index-3)->push_back(tmp-1);
                ++s;
            }
            file.close();
            return true;
        }
    }

    std::cout << "File " << N[file_index] << " May Be Uninitialized!" << std::endl;
    return false;
}

void tetLoader::dumpScreen(){

    std::string s  = "==== tetLoader dump ====\n";
    s += ("Vertex Number: " + std::to_string(num[0]) + "\n"
     + "Face Number: " + std::to_string( num[1] ) + "\n"
     + "Element Number: "+ std::to_string(num[2]) + "\n" );
    if(isSubFaceLoad){
        s +=  ("Down Face Number: " + std::to_string(num[3]) + "\n" +
         "Top Face Number: " + std::to_string( num[4]) + "\n" +
         "Front Face Number: " + std::to_string (num[5]) + "\n" +
         "Back Face Number: " + std::to_string( num[6])  + "\n" +
         "Left Face Number: " + std::to_string( num[8]) + "\n" +
         "Right Face Number: " + std::to_string( num[7]) + "\n");
    } else
        s += "Sub Face unloaded. \n";

    ImGui::Begin("Geometry Statistic");
    ImGui::Text( "%s", (char *)s.c_str());
    ImGui::End();
}

