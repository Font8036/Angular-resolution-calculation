function omega = sr4ju(A,B,C)
% 计算任意矩形对球心的立体角（球面度，sr）
% 输入:
%   A, B, C - 矩形三个顶点的3D坐标，每点为1x3向量，要求▲ABC是直角三角形
% 输出:
%   omega - 立体角（sr）

% 计算边向量
AB=B-A;
AC=C-A;
BC=C-B;

% 计算相应的角
a=abs(dot(AB,AC));
b=abs(dot(AB,BC));
c=abs(dot(AC,BC));

% 输入检验及分情况计算
if norm(AB)<eps || norm(BC)<eps ||norm(AC)<eps
    error("sr4ju函数参数中有重合点")
elseif a<eps
    omega=zhi(B,A,C);
    return
elseif b<eps
    omega=zhi(A,B,C);
    return
elseif c<eps
    omega=zhi(B,C,A);
    return
else 
    error("sr4ju函数参数中▲ABC不是直角三角形")
end
end

%使用三角形法来计算立体角
function y=zhi(A,B,C)
D=A+C-B;
s1=sr4sanjiao(A,B,C);
s2=sr4sanjiao(A,C,D);
y=s1+s2;
end