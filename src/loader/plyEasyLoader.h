//
// Created by birdpeople on 3/7/2022.
//

#ifndef FEM_PLYEASYLOADER_H
#define FEM_PLYEASYLOADER_H
#include <fstream>
#include<string>
#include<vector>
#include <iostream>

using namespace std;
class plyEasyLoader {
public:
    plyEasyLoader(vector<float>* _verData, vector<int>* _faceIndex,
                  string filename, string dir = "../frame/" )
    : verData(_verData), faceIndex(_faceIndex),
    name(filename), root(dir){
        verNum = verData->size() /6;
        faceNum = faceIndex->size() /3;
    };
    bool genFrame();

private:
    vector<float>* verData;
    vector<int>*faceIndex;
    unsigned long frame = 0;
    string name;
    string root;
    unsigned long verNum;
    unsigned long faceNum;
    static inline string frameNum(unsigned long frame){
        string ans = to_string(frame);
        return ans;
    }

};


#endif //FEM_PLYEASYLOADER_H
