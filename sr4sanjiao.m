function omega = sr4sanjiao(A, B, C)
% 计算空间三角形ABC对球心(0,0,0)的立体角（球面度，sr）
% 输入:
%   A, B, C - 三角形三个顶点的3D坐标，每点为1x3向量
% 输出:
%   omega - 立体角（sr）

%输入检验
na=norm(A);
nb=norm(B);
nc=norm(C);
if na<eps || nb<eps || nc<eps 
    error("sr4sanjiao函数参数存在0点")
end

% 归一化向量（确保在单位球面上）
A = A / na;
B = B / nb;
C = C / nc;

% 计算边长（中心角）
a = acos(dot(B, C));  % 边a的对角为A
b = acos(dot(A, C));  % 边b的对角为B
c = acos(dot(A, B));  % 边c的对角为C

% 计算半周长
s = (a + b + c) / 2;

% 海伦公式计算面积
under_root = tan(s/2) * tan((s-a)/2) * tan((s-b)/2) * tan((s-c)/2);
% 处理数值误差（如三点共线时under_root≈0）
if under_root < 0
    omega = 0;
    return
end
omega = 4 * atan(sqrt(under_root));  % 避免负数的平方根

% 处理数值误差（确保结果在[0, pi]范围内）
omega = max(0, min(pi, omega));
end