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

    for(int i = 0; i < (isSubFaceLoad ? 9:3) ; i++){
        std::ifstream tmp(this -> header + n[i]);
        if(!tmp.is_open())
            continue;
        std::cout << "Find " << N[i] << "File" << std::endl;
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
                Face->push_back(tmp);

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
        Vertex->reserve(num[0] * 3);
        int s = 0;
        while (file >> t) {
            if (s % 4)
                Vertex->push_back(t);

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
                Element->push_back(tmp);

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
        for (int i = 3; i<9 ;i++)
            res &= this->loadSubFace(n[i]);
    return res;
}

bool tetLoader::loadSubFace(std::string target){
    int file_index = -1;
    for(int i = 3;i<9;i++)
        if(n[i] == target || N[i] == target)
            file_index = i;
    // (file_index : 3-8)
    if(file_index >= 0 && num[file_index] != 0)
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
            subFace[file_index-3]->reserve(num[file_index] * 3);
            int s = 0;
            while(file>>tmp){
                if(s%4)
                    subFace[file_index-3]->push_back(tmp);
                ++s;
            }
            file.close();
            return true;
        }
    }

    std::cout << "File " << N[file_index] << " May Be Uninitialized!" << std::endl;
    return false;
}

void tetLoader::dump(){

    std::cout<< "======= tetLoader dump ======"<<std::endl;
    std::cout<< "Vertex Number: "<< num[0] << std::endl;
    std::cout<< "Face Number: "<< num[1] << std::endl;
    std::cout<< "Element Number: "<< num[2] << std::endl;
    if (isSubFaceLoad){
        std::cout<< "Down Face Number: "<< num[3] << std::endl;
        std::cout<< "Top Face Number: "<< num[4] << std::endl;
        std::cout<< "Front Face Number: "<< num[5] << std::endl;
        std::cout<< "Back Face Number: "<< num[6] << std::endl;
        std::cout<< "Left Face Number: "<< num[8] << std::endl;
        std::cout<< "Right Face Number: " << num[7] << std::endl;
    }
    else
        std::cout<< "Sub Face unloaded." << std::endl;

    std::cout<< "======= tetLoader dump ======"<<std::endl;
}

