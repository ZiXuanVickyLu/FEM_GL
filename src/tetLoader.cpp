//
// Created by birdpeople on 2/20/2022.
//

#include "tetLoader.h"

void tetLoader::initLoader(){

}
bool tetLoader::loadFace(){
return true;
}

bool tetLoader::loadVertex(){
    return true;
}
bool tetLoader::loadElement(){
    return true;
}

bool tetLoader::loadAll(){
    return true;
}

bool tetLoader::loadSubFace(std::string target){
    return true;
}

void tetLoader::dump(){

    std::cout<< "======= tetLoader dump ======"<<std::endl;
    std::cout<< "Vertex Number: "<< vertexNum << std::endl;
    std::cout<< "Face Number: "<< faceNum << std::endl;
    std::cout<< "Element Number: "<< elementNum << std::endl;
    if (isSubFaceLoad){
        std::cout<< "Lower Face Number: "<< lowerFaceNum << std::endl;
        std::cout<< "Top Face Number: "<< topFaceNum << std::endl;
        std::cout<< "Front Face Number: "<< frontFaceNum << std::endl;
        std::cout<< "Back Face Number: "<< backFaceNum << std::endl;
        std::cout<< "Left Face Number: "<< leftFaceNum << std::endl;
        std::cout<< "Right Face Number: " << rightFaceNum << std::endl;
    }
    else
        std::cout<< "Sub Face unloaded." << std::endl;

    std::cout<< "======= tetLoader dump ======"<<std::endl;
}

