%以下程序是验证CRP示教器上的位置数据和视觉捕捉系统测得的坐标数据之间的误差
%设机械臂末端坐标系为C 机械臂基坐标系为A  视觉捕捉系统基坐标系为B
%对机械臂的零位点以及在机械臂的四个象限中随机取点进行测量
%工具坐标系1下进行
%第一个坐标点取为机械臂的零位点
%末端位置C与基坐标系A之间的变换关系为
Tca1 = [1  0  0  718.084;
     0  1 0  0.054;
     0  0  1  284.846;
     0  0  0    1];
 %视觉捕捉零位坐标系B到机械臂基坐标系A之间的关系 有2-3mm的误差 
Tba = [1  0  0 471.387;
     0  1  0  645.382;
     0  0  1  -179.297;
     0  0  0     1]; 
 %末端位置在视觉捕捉系统下的坐标位置
Tcb1 = [1 0 0 259.435;
         0 1 0 -639.145;
         0 0 1 464.4638;
         0 0 0  1];
%之间的位置误差
error1 = Tca1 -  Tcb1*Tba

%在机械臂的四周取点来测量误差  第二个点在 +x，+y区域内取点
Tca2 = [1  0  0  547.148;
     0  1 0  513.575;
     0  0  1  231.921;
     0  0  0    1];
 %视觉捕捉零位坐标系B到机械臂基坐标系A之间的关系 有2-3mm的误差 
Tba = [1  0  0 471.387;
     0  1  0  645.382;
     0  0  1  -179.297;
     0  0  0     1]; 
 %末端位置在视觉捕捉系统下的坐标位置
Tcb2 = [1 0 0 82.68275;
         0 1 0 -127.156;
         0 0 1 409.5226;
         0 0 0  1];
error2 = Tca2 -  Tcb2*Tba

%在机械臂的四周取点来测量误差  第三个点在 -x，+y区域内取点 
Tca3 = [1  0  0  -733.727;
     0  1 0  513.624;
     0  0  1  231.936;
     0  0  0    1];
 %视觉捕捉零位坐标系B到机械臂基坐标系A之间的关系 有2-3mm的误差 
Tba = [1  0  0 471.387;
     0  1  0  645.382;
     0  0  1  -179.297;
     0  0  0     1]; 
 %末端位置在视觉捕捉系统下的坐标位置
Tcb3 = [1 0 0 -1199.49;
         0 1 0 -131.278;
         0 0 1 420.748;
         0 0 0  1];
error3 = Tca3 -  Tcb3*Tba   

%在机械臂的四周取点来测量误差  第四个点在 -x，-y区域内取点
Tca4 = [1  0  0  -263.142;
     0  1 0  -856.093;
     0  0  1  231.908;
     0  0  0    1];
 %视觉捕捉零位坐标系B到机械臂基坐标系A之间的关系 有2-3mm的误差 
Tba = [1  0  0 471.387;
     0  1  0  645.382;
     0  0  1  -179.297;
     0  0  0     1]; 
 %末端位置在视觉捕捉系统下的坐标位置
Tcb4 = [1 0 0 -723.009;
         0 1 0 -1500.92;
         0 0 1 429.8514;
         0 0 0  1];
error4 = Tca4 -  Tcb4*Tba   %第四点误差略大，猜想越靠近盲区，捕捉不精确，误差会越大。

%在机械臂的四周取点来测量误差  第五个点在 +x，-y区域内取点
Tca5 = [1  0  0  703.217;
     0  1 0  -554.638;
     0  0  1  231.902;
     0  0  0    1];
 %视觉捕捉零位坐标系B到机械臂基坐标系A之间的关系 有2-3mm的误差 
Tba = [1  0  0 471.387;
     0  1  0  645.382;
     0  0  1  -179.297;
     0  0  0     1]; 
 %末端位置在视觉捕捉系统下的坐标位置
Tcb5 = [1 0 0 241.9256;
         0 1 0 -1197.72;
         0 0 1 419.9679;
         0 0 0  1];
error5 = Tca5 -  Tcb5*Tba













 
 
 