function FOV = FOV4sr(omega)
% sr4FOV函数的反函数
% 输入:
%   omega - 立体角（sr）,范围[0, 4*pi]
% 输出:
%   FOV - 可视角度，认为是圆锥的轴截面的两条母线之间的角，范围[0, 360]。

% 检查输入合法性
if omega < 0 || omega > 4*pi
    error('sr4FOV函数参数错误，立体角omega必须在[0, 4*pi]范围内');
end

% 验证极端情况
if abs(omega) < eps
    FOV = 0;    
    return
elseif abs(omega - 4*pi) < eps
    FOV = 360;
    return
end

FOV=(360*acos(1 - omega/(2*pi)))/pi;
end