//
// Created by birdpeople on 3/7/2022.
//

#include "plyEasyLoader.h"

bool plyEasyLoader::genFrame(){
    auto N = frameNum(++frame);
    ofstream now((root + name + N + ".ply"));
    if(!now.is_open()) {
        cout << "========== plyEasyLoader dump =========" << endl;
        cout << "file open failed!"<<endl;
        return false;
    }
    now << "ply" << endl;
    now << "format ascii 1.0" << endl;
    now << "comment object: cube" << endl;
    now << "element vertex " << verNum << endl;
    now << "property float x" << endl <<
           "property float y" << endl <<
           "property float z" << endl <<
           "property uchar red" << endl <<
           "property uchar green" << endl <<
           "property uchar blue" << endl;
    now << "element face " << faceNum << endl;
    now << "property list uchar int vertex_index" << endl;
    now << "end_header"<<endl;
    for(int i = 0; i < verNum; i++){
        now
        << verData->at(i * 6 + 0) << " "
        << verData->at(i * 6 + 1) << " "
        << verData->at(i * 6 + 2) << " "
        << (unsigned int)(255 * verData->at(i * 6 + 3)) << " "
        << (unsigned int)(255 * verData->at(i * 6 + 4)) << " "
        << (unsigned int)(255 * verData->at(i * 6 + 5)) << endl;
    }
    for(int i = 0; i < faceNum;i++){
        now << "3 "
                << faceIndex->at(i * 3 + 0) << " "
                << faceIndex->at(i * 3 + 1) << " "
                << faceIndex->at(i * 3 + 2) << endl;
    }
    now.close();
    return true;
}