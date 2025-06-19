function omega = sr4abd(a, b, d)
% 计算正对着的矩形对球心的立体角（球面度，sr）
% 输入:
%   a - 矩形长度（沿x轴）
%   b - 矩形宽度（沿y轴）
%   d - 矩形平面到球心的垂直距离（d > 0）
% 输出:
%   omega - 立体角（sr）

% 检查输入合法性
if d <= 0
    error('sr4abd函数参数错误，距离d必须为正数');
end

%使用三角形法来计算立体角
A=[a/2,b/2,d];
B=[a/2,-b/2,d];
C=[-a/2,b/2,d];
omega=2*sr4sanjiao(A,B,C);
end