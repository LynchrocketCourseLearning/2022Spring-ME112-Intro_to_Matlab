%% 《小星星》
clear all;close;clc;
    
%% 基础数据 ====================

fs = 44100;     %采样率。

% 1节=4拍，1拍=60/bpm
T8 = 0.63;		% 1拍
T7 = 7/8*T8;	% 0.875拍
T6 = 6/8*T8;	% 0.75拍
T5 = 5/8*T8;	% 0.625拍
T4 = 4/8*T8;	% 1/2拍
T3 = 3/8*T8;	% 3/8拍
T2 = 2/8*T8;	% 1/4拍
T1 = 1/8*T8;	% 1/8拍
T9 = 2*T8;		% 2拍
T10 = 3*T8;		% 3拍
T11 = 4*T8;		% 4拍
T12 = 5*T8;     % 5拍
T13 = 6*T8;     % 6拍
T14 = 7*T8;		% 7拍
T15 = 8*T8;		% 8拍
T16 = 9*T8;		% 9拍

G = 1;  %高音色调开始位置。
Z = 8;  %中音色调开始位置。
D = 15; %低音色调开始位置。
DD = 22; %低低音色调开始位置。
o = 29; %休止色调的位置。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        

%% 休止音 =====================
o1 = GW(o,T1);		%T1
o2 = GW(o,T2);		%T2
o3 = GW(o,T3);		%T3
o4 = GW(o,T4);		%T4
o5 = GW(o,T5);		%T5
o6 = GW(o,T6);		%T6
o7 = GW(o,T7);		%T7
o8 = GW(o,T8);		%T8
o9 = GW(o,T9);		%T9
o10 = GW(o,T10);	%T10
o11 = GW(o,T11);	%T11
o12 = GW(o,T12);	%T12
o13 = GW(o,T13);	%T13
o14 = GW(o,T14);	%T14
o15 = GW(o,T15);	%T15
o16 = GW(o,T16);	%T16

%% 高音:T1~T16 =================
%T1
g11 = GW(G,T1);
g12 = GW(G+1,T1);
g13 = GW(G+2,T1);
g14 = GW(G+3,T1);
g15 = GW(G+4,T1);
g16 = GW(G+5,T1);
g17 = GW(G+6,T1);
%T2
g21 = GW(G,T2);
g22 = GW(G+1,T2);
g23 = GW(G+2,T2);
g24 = GW(G+3,T2);
g25 = GW(G+4,T2);
g26 = GW(G+5,T2);
g27 = GW(G+6,T2);
%T3
g31 = GW(G,T3);
g32 = GW(G+1,T3);
g33 = GW(G+2,T3);
g34 = GW(G+3,T3);
g35 = GW(G+4,T3);
g36 = GW(G+5,T3);
g37 = GW(G+6,T3);
%T4
g41 = GW(G,T4);
g42 = GW(G+1,T4);
g43 = GW(G+2,T4);
g44 = GW(G+3,T4);
g45 = GW(G+4,T4);
g46 = GW(G+5,T4);
g47 = GW(G+6,T4);
%T5
g51 = GW(G,T5);
g52 = GW(G+1,T5);
g53 = GW(G+2,T5);
g54 = GW(G+3,T5);
g55 = GW(G+4,T5);
g56 = GW(G+5,T5);
g57 = GW(G+6,T5);
%T6
g61 = GW(G,T6);
g62 = GW(G+1,T6);
g63 = GW(G+2,T6);
g64 = GW(G+3,T6);
g65 = GW(G+4,T6);
g66 = GW(G+5,T6);
g67 = GW(G+6,T6);
%T7
g71 = GW(G,T7);
g72 = GW(G+1,T7);
g73 = GW(G+2,T7);
g74 = GW(G+3,T7);
g75 = GW(G+4,T7);
g76 = GW(G+5,T7);
g77 = GW(G+6,T7);
%T8
g81 = GW(G,T8);
g82 = GW(G+1,T8);
g83 = GW(G+2,T8);
g84 = GW(G+3,T8);
g85 = GW(G+4,T8);
g86 = GW(G+5,T8);
g87 = GW(G+6,T8);
%T9
g91 = GW(G,T9);
g92 = GW(G+1,T9);
g93 = GW(G+2,T9);
g94 = GW(G+3,T9);
g95 = GW(G+4,T9);
g96 = GW(G+5,T9);
g97 = GW(G+6,T9);
%T10
g101 = GW(G,T10);
g102 = GW(G+1,T10);
g103 = GW(G+2,T10);
g104 = GW(G+3,T10);
g105 = GW(G+4,T10);
g106 = GW(G+5,T10);
g107 = GW(G+6,T10);
%T11
g111 = GW(G,T11);
g112 = GW(G+1,T11);
g113 = GW(G+2,T11);
g114 = GW(G+3,T11);
g115 = GW(G+4,T11);
g116 = GW(G+5,T11);
g117 = GW(G+6,T11);
%T12
g121 = GW(G,T12);
g122 = GW(G+1,T12);
g123 = GW(G+2,T12);
g124 = GW(G+3,T12);
g125 = GW(G+4,T12);
g126 = GW(G+5,T12);
g127 = GW(G+6,T12);
%T13
g131 = GW(G,T13);
g132 = GW(G+1,T13);
g133 = GW(G+2,T13);
g134 = GW(G+3,T13);
g135 = GW(G+4,T13);
g136 = GW(G+5,T13);
g137 = GW(G+6,T13);
%T14
g141 = GW(G,T14);
g142 = GW(G+1,T14);
g143 = GW(G+2,T14);
g144 = GW(G+3,T14);
g145 = GW(G+4,T14);
g146 = GW(G+5,T14);
g147 = GW(G+6,T14);
%T15
g151 = GW(G,T15);
g152 = GW(G+1,T15);
g153 = GW(G+2,T15);
g154 = GW(G+3,T15);
g155 = GW(G+4,T15);
g156 = GW(G+5,T15);
g157 = GW(G+6,T15);
%T16
g161 = GW(G,T16);
g162 = GW(G+1,T16);
g163 = GW(G+2,T16);
g164 = GW(G+3,T16);
g165 = GW(G+4,T16);
g166 = GW(G+5,T16);
g167 = GW(G+6,T16);

%% 中音:T1~T16 =================
%T1
z11 = GW(Z,T1);
z12 = GW(Z+1,T1);
z13 = GW(Z+2,T1);
z14 = GW(Z+3,T1);
z15 = GW(Z+4,T1);
z16 = GW(Z+5,T1);
z17 = GW(Z+6,T1);
%T2
z21 = GW(Z,T2);
z22 = GW(Z+1,T2);
z23 = GW(Z+2,T2);
z24 = GW(Z+3,T2);
z25 = GW(Z+4,T2);
z26 = GW(Z+5,T2);
z27 = GW(Z+6,T2);
%T3
z31 = GW(Z,T3);
z32 = GW(Z+1,T3);
z33 = GW(Z+2,T3);
z34 = GW(Z+3,T3);
z35 = GW(Z+4,T3);
z36 = GW(Z+5,T3);
z37 = GW(Z+6,T3);
%T4
z41 = GW(Z,T4);
z42 = GW(Z+1,T4);
z43 = GW(Z+2,T4);
z44 = GW(Z+3,T4);
z45 = GW(Z+4,T4);
z46 = GW(Z+5,T4);
z47 = GW(Z+6,T4);
%T5
z51 = GW(Z,T5);
z52 = GW(Z+1,T5);
z53 = GW(Z+2,T5);
z54 = GW(Z+3,T5);
z55 = GW(Z+4,T5);
z56 = GW(Z+5,T5);
z57 = GW(Z+6,T5);
%T6
z61 = GW(Z,T6);
z62 = GW(Z+1,T6);
z63 = GW(Z+2,T6);
z64 = GW(Z+3,T6);
z65 = GW(Z+4,T6);
z66 = GW(Z+5,T6);
z67 = GW(Z+6,T6);
%T7
z71 = GW(Z,T7);
z72 = GW(Z+1,T7);
z73 = GW(Z+2,T7);
z74 = GW(Z+3,T7);
z75 = GW(Z+4,T7);
z76 = GW(Z+5,T7);
z77 = GW(Z+6,T7);
%T8
z81 = GW(Z,T8);
z82 = GW(Z+1,T8);
z83 = GW(Z+2,T8);
z84 = GW(Z+3,T8);
z85 = GW(Z+4,T8);
z86 = GW(Z+5,T8);
z87 = GW(Z+6,T8);
%T9
z91 = GW(Z,T9);
z92 = GW(Z+1,T9);
z93 = GW(Z+2,T9);
z94 = GW(Z+3,T9);
z95 = GW(Z+4,T9);
z96 = GW(Z+5,T9);
z97 = GW(Z+6,T9);
%T10
z101 = GW(Z,T10);
z102 = GW(Z+1,T10);
z103 = GW(Z+2,T10);
z104 = GW(Z+3,T10);
z105 = GW(Z+4,T10);
z106 = GW(Z+5,T10);
z107 = GW(Z+6,T10);
%T11
z111 = GW(Z,T11);
z112 = GW(Z+1,T11);
z113 = GW(Z+2,T11);
z114 = GW(Z+3,T11);
z115 = GW(Z+4,T11);
z116 = GW(Z+5,T11);
z117 = GW(Z+6,T11);
%T12
z121 = GW(Z,T12);
z122 = GW(Z+1,T12);
z123 = GW(Z+2,T12);
z124 = GW(Z+3,T12);
z125 = GW(Z+4,T12);
z126 = GW(Z+5,T12);
z127 = GW(Z+6,T12);
%T13
z131 = GW(Z,T13);
z132 = GW(Z+1,T13);
z133 = GW(Z+2,T13);
z134 = GW(Z+3,T13);
z135 = GW(Z+4,T13);
z136 = GW(Z+5,T13);
z137 = GW(Z+6,T13);
%T14
z141 = GW(Z,T14);
z142 = GW(Z+1,T14);
z143 = GW(Z+2,T14);
z144 = GW(Z+3,T14);
z145 = GW(Z+4,T14);
z146 = GW(Z+5,T14);
z147 = GW(Z+6,T14);
%T15
z151 = GW(Z,T15);
z152 = GW(Z+1,T15);
z153 = GW(Z+2,T15);
z154 = GW(Z+3,T15);
z155 = GW(Z+4,T15);
z156 = GW(Z+5,T15);
z157 = GW(Z+6,T15);
%T16
z161 = GW(Z,T16);
z162 = GW(Z+1,T16);
z163 = GW(Z+2,T16);
z164 = GW(Z+3,T16);
z165 = GW(Z+4,T16);
z166 = GW(Z+5,T16);
z167 = GW(Z+6,T16);

%% 低音:T1~T16 =================
%T1
d11 = GW(D,T1);
d12 = GW(D+1,T1);
d13 = GW(D+2,T1);
d14 = GW(D+3,T1);
d15 = GW(D+4,T1);
d16 = GW(D+5,T1);
d17 = GW(D+6,T1);
%T2
d21 = GW(D,T2);
d22 = GW(D+1,T2);
d23 = GW(D+2,T2);
d24 = GW(D+3,T2);
d25 = GW(D+4,T2);
d26 = GW(D+5,T2);
d27 = GW(D+6,T2);
%T3
d31 = GW(D,T3);
d32 = GW(D+1,T3);
d33 = GW(D+2,T3);
d34 = GW(D+3,T3);
d35 = GW(D+4,T3);
d36 = GW(D+5,T3);
d37 = GW(D+6,T3);
%T4
d41 = GW(D,T4);
d42 = GW(D+1,T4);
d43 = GW(D+2,T4);
d44 = GW(D+3,T4);
d45 = GW(D+4,T4);
d46 = GW(D+5,T4);
d47 = GW(D+6,T4);
%T5
d51 = GW(D,T5);
d52 = GW(D+1,T5);
d53 = GW(D+2,T5);
d54 = GW(D+3,T5);
d55 = GW(D+4,T5);
d56 = GW(D+5,T5);
d57 = GW(D+6,T5);
%T6
d61 = GW(D,T6);
d62 = GW(D+1,T6);
d63 = GW(D+2,T6);
d64 = GW(D+3,T6);
d65 = GW(D+4,T6);
d66 = GW(D+5,T6);
d67 = GW(D+6,T6);
%T7
d71 = GW(D,T7);
d72 = GW(D+1,T7);
d73 = GW(D+2,T7);
d74 = GW(D+3,T7);
d75 = GW(D+4,T7);
d76 = GW(D+5,T7);
d77 = GW(D+6,T7);
%T8
d81 = GW(D,T8);
d82 = GW(D+1,T8);
d83 = GW(D+2,T8);
d84 = GW(D+3,T8);
d85 = GW(D+4,T8);
d86 = GW(D+5,T8);
d87 = GW(D+6,T8);
%T9
d91 = GW(D,T9);
d92 = GW(D+1,T9);
d93 = GW(D+2,T9);
d94 = GW(D+3,T9);
d95 = GW(D+4,T9);
d96 = GW(D+5,T9);
d97 = GW(D+6,T9);
%T10
d101 = GW(D,T10);
d102 = GW(D+1,T10);
d103 = GW(D+2,T10);
d104 = GW(D+3,T10);
d105 = GW(D+4,T10);
d106 = GW(D+5,T10);
d107 = GW(D+6,T10);
%T11
d111 = GW(D,T11);
d112 = GW(D+1,T11);
d113 = GW(D+2,T11);
d114 = GW(D+3,T11);
d115 = GW(D+4,T11);
d116 = GW(D+5,T11);
d117 = GW(D+6,T11);
%T12
d121 = GW(D,T12);
d122 = GW(D+1,T12);
d123 = GW(D+2,T12);
d124 = GW(D+3,T12);
d125 = GW(D+4,T12);
d126 = GW(D+5,T12);
d127 = GW(D+6,T12);
%T13
d131 = GW(D,T13);
d132 = GW(D+1,T13);
d133 = GW(D+2,T13);
d134 = GW(D+3,T13);
d135 = GW(D+4,T13);
d136 = GW(D+5,T13);
d137 = GW(D+6,T13);
%T14
d141 = GW(D,T14);
d142 = GW(D+1,T14);
d143 = GW(D+2,T14);
d144 = GW(D+3,T14);
d145 = GW(D+4,T14);
d146 = GW(D+5,T14);
d147 = GW(D+6,T14);
%T15
d151 = GW(D,T15);
d152 = GW(D+1,T15);
d153 = GW(D+2,T15);
d154 = GW(D+3,T15);
d155 = GW(D+4,T15);
d156 = GW(D+5,T15);
d157 = GW(D+6,T15);
%T16
d161 = GW(D,T16);
d162 = GW(D+1,T16);
d163 = GW(D+2,T16);
d164 = GW(D+3,T16);
d165 = GW(D+4,T16);
d166 = GW(D+5,T16);
d167 = GW(D+6,T16);

%% 低低音:T1~T16 ================
%T1
dd11 = GW(DD,T1);
dd12 = GW(DD+1,T1);
dd13 = GW(DD+2,T1);
dd14 = GW(DD+3,T1);
dd15 = GW(DD+4,T1);
dd16 = GW(DD+5,T1);
dd17 = GW(DD+6,T1);
%T2
dd21 = GW(DD,T2);
dd22 = GW(DD+1,T2);
dd23 = GW(DD+2,T2);
dd24 = GW(DD+3,T2);
dd25 = GW(DD+4,T2);
dd26 = GW(DD+5,T2);
dd27 = GW(DD+6,T2);
%T3
dd31 = GW(DD,T3);
dd32 = GW(DD+1,T3);
dd33 = GW(DD+2,T3);
dd34 = GW(DD+3,T3);
dd35 = GW(DD+4,T3);
dd36 = GW(DD+5,T3);
dd37 = GW(DD+6,T3);
%T4
dd41 = GW(DD,T4);
dd42 = GW(DD+1,T4);
dd43 = GW(DD+2,T4);
dd44 = GW(DD+3,T4);
dd45 = GW(DD+4,T4);
dd46 = GW(DD+5,T4);
dd47 = GW(DD+6,T4);
%T5
dd51 = GW(DD,T5);
dd52 = GW(DD+1,T5);
dd53 = GW(DD+2,T5);
dd54 = GW(DD+3,T5);
dd55 = GW(DD+4,T5);
dd56 = GW(DD+5,T5);
dd57 = GW(DD+6,T5);
%T6
dd61 = GW(DD,T6);
dd62 = GW(DD+1,T6);
dd63 = GW(DD+2,T6);
dd64 = GW(DD+3,T6);
dd65 = GW(DD+4,T6);
dd66 = GW(DD+5,T6);
dd67 = GW(DD+6,T6);
%T7
dd71 = GW(DD,T7);
dd72 = GW(DD+1,T7);
dd73 = GW(DD+2,T7);
dd74 = GW(DD+3,T7);
dd75 = GW(DD+4,T7);
dd76 = GW(DD+5,T7);
dd77 = GW(DD+6,T7);
%T8
dd81 = GW(DD,T8);
dd82 = GW(DD+1,T8);
dd83 = GW(DD+2,T8);
dd84 = GW(DD+3,T8);
dd85 = GW(DD+4,T8);
dd86 = GW(DD+5,T8);
dd87 = GW(DD+6,T8);
%T9
dd91 = GW(DD,T9);
dd92 = GW(DD+1,T9);
dd93 = GW(DD+2,T9);
dd94 = GW(DD+3,T9);
dd95 = GW(DD+4,T9);
dd96 = GW(DD+5,T9);
dd97 = GW(DD+6,T9);
%T10
dd101 = GW(DD,T10);
dd102 = GW(DD+1,T10);
dd103 = GW(DD+2,T10);
dd104 = GW(DD+3,T10);
dd105 = GW(DD+4,T10);
dd106 = GW(DD+5,T10);
dd107 = GW(DD+6,T10);
%T11
dd111 = GW(DD,T11);
dd112 = GW(DD+1,T11);
dd113 = GW(DD+2,T11);
dd114 = GW(DD+3,T11);
dd115 = GW(DD+4,T11);
dd116 = GW(DD+5,T11);
dd117 = GW(DD+6,T11);
%T12
dd121 = GW(DD,T12);
dd122 = GW(DD+1,T12);
dd123 = GW(DD+2,T12);
dd124 = GW(DD+3,T12);
dd125 = GW(DD+4,T12);
dd126 = GW(DD+5,T12);
dd127 = GW(DD+6,T12);
%T13
dd131 = GW(DD,T13);
dd132 = GW(DD+1,T13);
dd133 = GW(DD+2,T13);
dd134 = GW(DD+3,T13);
dd135 = GW(DD+4,T13);
dd136 = GW(DD+5,T13);
dd137 = GW(DD+6,T13);
%T14
dd141 = GW(DD,T14);
dd142 = GW(DD+1,T14);
dd143 = GW(DD+2,T14);
dd144 = GW(DD+3,T14);
dd145 = GW(DD+4,T14);
dd146 = GW(DD+5,T14);
dd147 = GW(DD+6,T14);
%T15
dd151 = GW(DD,T15);
dd152 = GW(DD+1,T15);
dd153 = GW(DD+2,T15);
dd154 = GW(DD+3,T15);
dd155 = GW(DD+4,T15);
dd156 = GW(DD+5,T15);
dd157 = GW(DD+6,T15);
%T16
dd161 = GW(DD,T16);
dd162 = GW(DD+1,T16);
dd163 = GW(DD+2,T16);
dd164 = GW(DD+3,T16);
dd165 = GW(DD+4,T16);
dd166 = GW(DD+5,T16);
dd167 = GW(DD+6,T16);

%% 编写音乐
y1 = [g81 g81 g85 g85 g86 g86 g85 o8 g84 g84 g83 g83];
y2 = [g82 g82 g81 o8 g85 g85 g84 g84 g83 g83 g82 o8];
y3 = [g85 g85 g84 g84 g83 g83 g82 o8 g81 g81 g85 g85];
y4 = [g86 g86 g85 o8 g84 g84 g83 g83 g82 g82 g81 o8];
y = [y1 y2 y3 y4];
sound(y,fs);
disp('Little Star');