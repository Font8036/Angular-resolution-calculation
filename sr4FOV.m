function omega = sr4FOV(FOV)
% 计算圆锥形区域的立体角（球面度，sr）
% 输入:
%   FOV - 可视角度，认为是圆锥的轴截面的两条母线之间的角，范围[0, 360]。实际计算时使用的是FOV的一半。
% 输出:
%   omega - 立体角（sr）

% 检查输入合法性
if FOV < 0 || FOV > 360
    error('sr4FOV函数参数错误，夹角FOV必须在[0, 360]度范围内');
end

% 验证极端情况
if abs(FOV) < eps
    omega = 0;       % theta=0时立体角为0
    return
elseif abs(FOV - 360) < eps
    omega = 4*pi;    % theta=pi时立体角为整个球面
    return
end

% 计算立体角（解析解）
omega = 2*pi*(1 - cos(deg2rad(FOV)/2));

end