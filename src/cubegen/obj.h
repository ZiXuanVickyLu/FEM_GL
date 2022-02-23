//
// Created by birdpeople on 8/17/21.
//

#ifndef CUBEGEN_OBJ_H
#define CUBEGEN_OBJ_H

#include <cstring>
#include <string>
#include <cstdint>
#include <stdio.h>
#include <cstdlib>

extern uint16_t vetex[200][200][200][9];

class dim3{
public:
    dim3():len(0.0),wid(0.0),hei(0.0){};
    float len,wid,hei;
};

/*cubeConer
 * t-top d-down l-left r-right f-front b-back
 * bdl -1
 * fdl -2
 * fdr -3
 * bdr -4
 * btl -5
 * ftl -6
 * ftr -7
 * btr -8
 * */

class cube{
public:
    cube(int _lenN, int _widN, int _heiN,
         float _len, float _wid, float _hei,
         float _mvLen, float _mvWid, float _mvHei):
        heiN(_heiN), lenN(_lenN), widN(_widN),
        hei(_hei), len(_len), wid(_wid),
        mvWid(_mvWid), mvLen(_mvLen), mvHei(_mvHei)
    {
        this -> initVetex();
        this -> ecount = this ->lenN * this ->widN * this ->heiN * 6;
        this -> fcount = 4 * (this -> lenN * this -> heiN
                            + this -> lenN * this -> widN
                            + this -> heiN * this -> widN);
    }
    dim3 getPos(int lenId, int widId, int heiId, int cubConer){
        dim3 ans;
        ans.len = (float)lenId-1;
        ans.wid = (float)widId-1;
        ans.hei = (float)heiId-1;
        switch(cubConer){
            case 1:{break;}
            case 2:{ans.wid++; break;}
            case 3:{ans.wid++, ans.len++; break;}
            case 4:{ans.len++; break;}
            case 5:{ans.hei++; break;}
            case 6:{ans.wid++, ans.hei++; break;}
            case 7:{ans.wid++, ans.len++, ans.hei++; break;}
            case 8:{ans.hei++, ans.len++; break;}
            default:{;}
        }
        ans.hei *= this -> hei;
        ans.len *= this -> len;
        ans.wid *= this -> wid;
        ans.hei += this -> mvHei;
        ans.wid += this -> mvWid;
        ans.len += this -> mvLen;

        return ans;
    }
    uint16_t getVetex(int lenId, int widId, int heiId, int cubConer){
        return vetex[lenId][widId][heiId][cubConer];
    }
    bool print_vetex();
    bool print_ele();
    bool print_face();
    bool print_boundary();
    bool print_all();
    std::string filename;
    void fileroot(std::string arg){
        this -> filename = arg;
    }
private:

    int heiN, lenN, widN;
    int vcount = 0;
    int ecount = 0;
    int fcount = 0;
    float hei,len,wid;
    float mvHei,mvLen,mvWid;

    void initVetex();
    inline void fprintf_single_ele(int h, int w, int le, FILE* f, int&);
    inline void fprintf_top_face(int h, int w, int le, FILE* f, int&);
    inline void fprintf_down_face(int h, int w, int le, FILE* f, int&);
    inline void fprintf_left_face(int h, int w, int le, FILE* f, int&);
    inline void fprintf_right_face(int h, int w, int le, FILE* f, int&);
    inline void fprintf_front_face(int h, int w, int le, FILE* f, int&);
    inline void fprintf_back_face(int h, int w, int le, FILE* f, int&);
};

#endif //CUBEGEN_OBJ_H
