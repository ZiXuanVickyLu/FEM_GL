//
// Created by birdpeople on 8/17/21.
//
#include <sstream>
#include "obj.h"

uint16_t vetex[200][200][200][9];

inline int adjust(int h, int w, int le){
    if(h!=1 && w!=1 && le!=1)
        return 8;
    if(h!=1 && w!=1 && le==1)
        return 7;
    if(h!=1 && w==1 && le !=1 )
        return 6;
    if(h==1 && w!=1 && le!=1)
        return 4;
    if(h==1 && w==1 && le !=1 )
        return 2;
    if(h==1 && w!=1 && le==1)
        return 3;
    if(h!=1 && w==1 && le ==1)
        return 5;
    if(h==1 && w==1 && le ==1)
        return 1;

    return 0;
}

void cube::initVetex(){
    memset(vetex,0,sizeof(vetex));
    int vCount = 0;
    for(int h = 1; h<= this -> heiN; h++){
        for(int w = 1; w<= this -> widN; w++){
            for(int le = 1; le<= this -> lenN; le++)
            {
                switch(adjust(h,w,le))
                {
                    case 1:
                        for(int i = 1;i<=8;i++)
                            vetex[le][w][h][i] = i;
                        vCount = 8;
                        break;
                    case 2:
                        vetex[le][w][h][3] = ++vCount;
                        vetex[le][w][h][4] = ++vCount;
                        vetex[le][w][h][8] = ++vCount;
                        vetex[le][w][h][7] = ++vCount;
                        vetex[le][w][h][1] = vetex[le-1][w][h][4];
                        vetex[le][w][h][2] = vetex[le-1][w][h][3];
                        vetex[le][w][h][5] = vetex[le-1][w][h][8];
                        vetex[le][w][h][6] = vetex[le-1][w][h][7];
                    break;
                    case 3:
                        vetex[le][w][h][2] = ++vCount;
                        vetex[le][w][h][6] = ++vCount;
                        vetex[le][w][h][3] = ++vCount;
                        vetex[le][w][h][7] = ++vCount;
                        vetex[le][w][h][1] = vetex[le][w-1][h][2];
                        vetex[le][w][h][5] = vetex[le][w-1][h][6];
                        vetex[le][w][h][4] = vetex[le][w-1][h][3];
                        vetex[le][w][h][8] = vetex[le][w-1][h][7];
                    break;
                    case 4:
                        vetex[le][w][h][3] = ++vCount;
                        vetex[le][w][h][7] = ++vCount;
                        vetex[le][w][h][1] = vetex[le-1][w][h][4];
                        vetex[le][w][h][2] = vetex[le-1][w][h][3];
                        vetex[le][w][h][5] = vetex[le-1][w][h][8];
                        vetex[le][w][h][6] = vetex[le-1][w][h][7];
                        vetex[le][w][h][8] = vetex[le][w-1][h][7];
                        vetex[le][w][h][4] = vetex[le][w-1][h][3];
                    break;
                    case 5:
                        vetex[le][w][h][5] = ++vCount;
                        vetex[le][w][h][6] = ++vCount;
                        vetex[le][w][h][7] = ++vCount;
                        vetex[le][w][h][8] = ++vCount;
                        vetex[le][w][h][1] = vetex[le][w][h-1][5];
                        vetex[le][w][h][2] = vetex[le][w][h-1][6];
                        vetex[le][w][h][3] = vetex[le][w][h-1][7];
                        vetex[le][w][h][4] = vetex[le][w][h-1][8];
                    break;
                    case 6:
                        vetex[le][w][h][7] = ++vCount;
                        vetex[le][w][h][8] = ++vCount;
                        vetex[le][w][h][1] = vetex[le-1][w][h][4];
                        vetex[le][w][h][2] = vetex[le-1][w][h][3];
                        vetex[le][w][h][5] = vetex[le-1][w][h][8];
                        vetex[le][w][h][6] = vetex[le-1][w][h][7];
                        vetex[le][w][h][3] = vetex[le][w][h-1][7];
                        vetex[le][w][h][4] = vetex[le][w][h-1][8];
                    break;
                    case 7:
                        vetex[le][w][h][6] = ++vCount;
                        vetex[le][w][h][7] = ++vCount;
                        vetex[le][w][h][1] = vetex[le][w-1][h][2];
                        vetex[le][w][h][5] = vetex[le][w-1][h][6];
                        vetex[le][w][h][8] = vetex[le][w-1][h][7];
                        vetex[le][w][h][4] = vetex[le][w-1][h][3];
                        vetex[le][w][h][2] = vetex[le][w][h-1][6];
                        vetex[le][w][h][3] = vetex[le][w][h-1][7];
                    break;
                    case 8:
                        vetex[le][w][h][7] = ++vCount;
                        vetex[le][w][h][3] = vetex[le][w][h-1][7];
                        vetex[le][w][h][1] = vetex[le-1][w][h][4];
                        vetex[le][w][h][2] = vetex[le-1][w][h][3];
                        vetex[le][w][h][5] = vetex[le-1][w][h][8];
                        vetex[le][w][h][6] = vetex[le-1][w][h][7];
                        vetex[le][w][h][8] = vetex[le][w-1][h][7];
                        vetex[le][w][h][4] = vetex[le][w-1][h][3];
                    break;
                    default: ;
                }
            }
        }
    }
    this -> vcount = vCount;
}

std::string n2s ( int Number )
{
    std::ostringstream stmp;
    stmp << Number;
    return stmp.str();
}

bool cube::print_vetex(){

    std::string v = this->filename + "bar" + n2s(this->lenN) + n2s(this->widN) + n2s(this->heiN) + ".1.node";
    const char* vname = v.c_str();
    FILE* f = fopen(vname,"w");
    if(f== nullptr)
    {
        puts("Open file fail!");
        return false;
    }
    fprintf(f,"%d  3  0  0\n",this->vcount);

    for(int h = 1; h<= this -> heiN; h++){
        for(int w = 1; w<= this -> widN; w++){
            for(int le = 1; le<= this -> lenN; le++)
            {
                switch(adjust(h,w,le))
                {
                    case 1:
                        for(int i = 1;i<=8;i++)
                            fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][i],this->getPos(le,w,h,i).len,
                                    this->getPos(le,w,h,i).hei,this->getPos(le,w,h,i).wid);
                        break;
                    case 2:
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][3],this->getPos(le,w,h,3).len,
                                this->getPos(le,w,h,3).hei,this->getPos(le,w,h,3).wid);
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][4],this->getPos(le,w,h,4).len,
                                this->getPos(le,w,h,4).hei,this->getPos(le,w,h,4).wid);
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][8],this->getPos(le,w,h,8).len,
                                this->getPos(le,w,h,8).hei,this->getPos(le,w,h,8).wid);
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][7],this->getPos(le,w,h,7).len,
                                this->getPos(le,w,h,7).hei,this->getPos(le,w,h,7).wid);
                        break;
                    case 3:
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][2],this->getPos(le,w,h,2).len,
                                this->getPos(le,w,h,2).hei,this->getPos(le,w,h,2).wid);
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][6],this->getPos(le,w,h,6).len,
                                this->getPos(le,w,h,6).hei,this->getPos(le,w,h,6).wid);
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][3],this->getPos(le,w,h,3).len,
                                this->getPos(le,w,h,3).hei,this->getPos(le,w,h,3).wid);
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][7],this->getPos(le,w,h,7).len,
                                this->getPos(le,w,h,7).hei,this->getPos(le,w,h,7).wid);
                        break;
                    case 4:
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][3],this->getPos(le,w,h,3).len,
                                this->getPos(le,w,h,3).hei,this->getPos(le,w,h,3).wid);
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][7],this->getPos(le,w,h,7).len,
                                this->getPos(le,w,h,7).hei,this->getPos(le,w,h,7).wid);
                        break;
                    case 5:
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][5],this->getPos(le,w,h,5).len,
                                this->getPos(le,w,h,5).hei,this->getPos(le,w,h,5).wid);
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][6],this->getPos(le,w,h,6).len,
                                this->getPos(le,w,h,6).hei,this->getPos(le,w,h,6).wid);
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][7],this->getPos(le,w,h,7).len,
                                this->getPos(le,w,h,7).hei,this->getPos(le,w,h,7).wid);
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][8],this->getPos(le,w,h,8).len,
                                this->getPos(le,w,h,8).hei,this->getPos(le,w,h,8).wid);
                        break;
                    case 6:
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][7],this->getPos(le,w,h,7).len,
                                this->getPos(le,w,h,7).hei,this->getPos(le,w,h,7).wid);
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][8],this->getPos(le,w,h,8).len,
                                this->getPos(le,w,h,8).hei,this->getPos(le,w,h,8).wid);
                        break;
                    case 7:
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][6],this->getPos(le,w,h,6).len,
                                this->getPos(le,w,h,6).hei,this->getPos(le,w,h,6).wid);
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][7],this->getPos(le,w,h,7).len,
                                this->getPos(le,w,h,7).hei,this->getPos(le,w,h,7).wid);
                        break;
                    case 8:
                        fprintf(f,"\t%d\t%f\t%f\t%f\n",vetex[le][w][h][7],this->getPos(le,w,h,7).len,
                                this->getPos(le,w,h,7).hei,this->getPos(le,w,h,7).wid);
                        break;
                    default: ;
                }
            }
        }
    }
    fclose(f);
    return true;
}
inline void cube::fprintf_single_ele(int h, int w, int le,FILE* f,int &index){
    fprintf(f,"\t%d\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][5],vetex[le][w][h][6],vetex[le][w][h][8],vetex[le][w][h][1]);
    fprintf(f,"\t%d\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][6],vetex[le][w][h][7],vetex[le][w][h][8],vetex[le][w][h][1]);
    fprintf(f,"\t%d\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][6],vetex[le][w][h][2],vetex[le][w][h][3],vetex[le][w][h][1]);
    fprintf(f,"\t%d\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][6],vetex[le][w][h][3],vetex[le][w][h][7],vetex[le][w][h][1]);
    fprintf(f,"\t%d\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][7],vetex[le][w][h][3],vetex[le][w][h][8],vetex[le][w][h][1]);
    fprintf(f,"\t%d\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][3],vetex[le][w][h][4],vetex[le][w][h][8],vetex[le][w][h][1]);
}
bool cube::print_ele(){
int index = 0;
std::string ele = this->filename + "bar" + n2s(this->lenN) + n2s(this->widN) + n2s(this->heiN) + ".1.ele";
const char*  elename = ele.c_str();
FILE* f = fopen(elename,"w");
if(f==NULL)
{
    puts("Open file fail!");
    return false;
}
fprintf(f,"%d  4  0\n",this->ecount);

for(int h = 1; h <= this -> heiN; h++){
    for(int w = 1; w <= this ->widN; w++){
        for(int le = 1; le <= this -> lenN; le++){
            this ->fprintf_single_ele(h,w,le,f,index);
        }
    }
}
return true;
}

inline void cube::fprintf_top_face(int h, int w, int le, FILE* f, int &index){
    fprintf(f,"\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][5],vetex[le][w][h][6],vetex[le][w][h][8]);
    fprintf(f,"\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][6],vetex[le][w][h][7],vetex[le][w][h][8]);
}

inline void cube::fprintf_down_face(int h, int w, int le, FILE* f, int &index){
    fprintf(f,"\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][1],vetex[le][w][h][2],vetex[le][w][h][3]);
    fprintf(f,"\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][1],vetex[le][w][h][3],vetex[le][w][h][4]);
}

inline void cube::fprintf_left_face(int h, int w, int le, FILE* f, int &index){
    fprintf(f,"\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][6],vetex[le][w][h][2],vetex[le][w][h][1]);
    fprintf(f,"\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][6],vetex[le][w][h][1],vetex[le][w][h][5]);
}

inline void cube::fprintf_right_face(int h, int w, int le, FILE* f, int &index){
    fprintf(f,"\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][7],vetex[le][w][h][3],vetex[le][w][h][8]);
    fprintf(f,"\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][3],vetex[le][w][h][4],vetex[le][w][h][8]);
}

inline void cube::fprintf_front_face(int h, int w, int le, FILE* f, int &index){
    fprintf(f,"\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][6],vetex[le][w][h][2],vetex[le][w][h][3]);
    fprintf(f,"\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][6],vetex[le][w][h][3],vetex[le][w][h][7]);
}

inline void cube::fprintf_back_face(int h, int w, int le, FILE* f, int &index){
    fprintf(f,"\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][5],vetex[le][w][h][1],vetex[le][w][h][8]);
    fprintf(f,"\t%d\t%d\t%d\t%d\n",++index,vetex[le][w][h][1],vetex[le][w][h][4],vetex[le][w][h][8]);
}



bool cube::print_face(){
    int index = 0;
    std::string facen = this->filename + "bar" + n2s(this->lenN) + n2s(this->widN) + n2s(this->heiN) + ".1.face";
    const char* facename = facen.c_str();
    FILE* f = fopen(facename,"w");
    if(f==NULL)
    {
        puts("Open file fail!");
        return false;
    }
    fprintf(f,"%d   0\n",this->fcount);

    //top
        for(int w = 1; w <= this ->widN; w++){
            for(int le = 1; le <= this -> lenN; le++){
                this ->fprintf_top_face(this ->heiN ,w,le,f,index);
            }
        }

    //down
        for(int w = 1; w <= this ->widN; w++){
            for(int le = 1; le <= this -> lenN; le++){
                this ->fprintf_down_face(1 ,w,le,f,index);
            }
        }
    //back
        for(int h = 1; h <= this ->heiN; h++){
            for(int le = 1; le <= this -> lenN; le++){
                this ->fprintf_back_face(h ,1,le,f,index);
            }
        }

    //front
        for(int h = 1; h <= this ->heiN; h++){
            for(int le = 1; le <= this -> lenN; le++){
                this ->fprintf_front_face(h ,this -> widN, le,f,index);
            }
        }

    //left
        for(int h = 1; h <= this ->heiN; h++){
            for(int w = 1; w <= this -> widN; w++){
                this ->fprintf_left_face(h ,w,1,f,index);
            }
        }

    //right
        for(int h = 1; h <= this ->heiN; h++){
            for(int w = 1; w <= this -> widN; w++){
                this ->fprintf_right_face(h ,w,this -> lenN,f,index);
            }
        }

    fclose(f);
    return true;
}


bool cube::print_boundary(){
    //top
    int index = 0;
    std::string facet = this->filename + "bar" + n2s(this->lenN) + n2s(this->widN) + n2s(this->heiN) + ".1.top";
    const char* facenamet = facet.c_str();
    FILE* ft = fopen(facenamet,"w");
    if(ft==NULL)
    {
        puts("Open file fail!");
        return false;
    }
    fprintf(ft,"%d   0\n",this -> widN * this -> lenN * 2);

    for(int w = 1; w <= this ->widN; w++){
        for(int le = 1; le <= this -> lenN; le++){
            this ->fprintf_top_face(this ->heiN ,w,le,ft,index);
        }
    }
    fclose(ft);

    //down
    index = 0;
    std::string faced = this->filename + "bar" + n2s(this->lenN) + n2s(this->widN) + n2s(this->heiN) + ".1.down";
    const char* facenamed = faced.c_str();
    FILE* fd = fopen(facenamed,"w");
    if(fd==NULL)
    {
        puts("Open file fail!");
        return false;
    }
    fprintf(fd,"%d   0\n",this -> widN * this -> lenN * 2);

    for(int w = 1; w <= this ->widN; w++){
        for(int le = 1; le <= this -> lenN; le++){
            this ->fprintf_down_face(1 ,w,le,fd,index);
        }
    }
    fclose(fd);

    //back
    index = 0;
    std::string faceb = this->filename + "bar" + n2s(this->lenN) + n2s(this->widN) + n2s(this->heiN) + ".1.back";
    const char* facenameb = faceb.c_str();
    FILE* fb = fopen(facenameb,"w");
    if(fb==NULL)
    {
        puts("Open file fail!");
        return false;
    }
    fprintf(fb,"%d   0\n",this -> widN * this -> lenN * 2);
    for(int h = 1; h <= this ->heiN; h++){
        for(int le = 1; le <= this -> lenN; le++){
            this ->fprintf_back_face(h ,1,le,fb,index);
        }
    }
    fclose(fb);

    //front
    index = 0;
    std::string facef = this->filename + "bar" + n2s(this->lenN) + n2s(this->widN) + n2s(this->heiN) + ".1.front";
    const char* facenamef = facef.c_str();
    FILE* ff = fopen(facenamef,"w");
    if(ff==NULL)
    {
        puts("Open file fail!");
        return false;
    }
    fprintf(ff,"%d   0\n",this -> widN * this -> lenN * 2);
    for(int h = 1; h <= this ->heiN; h++){
        for(int le = 1; le <= this -> lenN; le++){
            this ->fprintf_front_face(h ,this -> widN, le,ff,index);
        }
    }
    fclose(ff);

    //left
    index = 0;
    std::string facel = this->filename + "bar" + n2s(this->lenN)  + n2s(this->widN) + n2s(this->heiN) + ".1.left";
    const char* facenamel = facel.c_str();
    FILE* fl = fopen(facenamel,"w");
    if(fl==NULL)
    {
        puts("Open file fail!");
        return false;
    }
    fprintf(fl,"%d   0\n",this -> widN * this -> lenN * 2);
    for(int h = 1; h <= this ->heiN; h++){
        for(int w = 1; w <= this -> widN; w++){
            this ->fprintf_left_face(h ,w,1,fl,index);
        }
    }
    fclose(fl);

    //right
    index = 0;
    std::string facer = this->filename + "bar" + n2s(this->lenN) + n2s(this->widN) + n2s(this->heiN)  + ".1.right";
    const char* facenamer = facer.c_str();
    FILE* fr = fopen(facenamer,"w");
    if(fr==NULL)
    {
        puts("Open file fail!");
        return false;
    }
    fprintf(fr,"%d   0\n",this -> widN * this -> lenN * 2);
    for(int h = 1; h <= this ->heiN; h++){
        for(int w = 1; w <= this -> widN; w++){
            this ->fprintf_right_face(h ,w,this -> lenN,fr,index);
        }
    }

    fclose(fr);
    return true;
}
