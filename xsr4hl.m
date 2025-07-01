% 结果不正确，有待后续考虑分析。
function omega = xsr4hl(h,l)
% 使用水平可视角度与竖直可视角度计算立体角（球面度，sr）
% 输入：
%     h - 竖直可视角度，范围[0, 180]
%     l - 水平可视角度，范围[0, 180]
% 输出：
%     omega - 立体角（sr）
[A, B, C] = deal(zeros(1, 3));  % 一次性初始化多个变量
azimuth=l/2*pi/180;
elevation=h/2*pi/180;
[A(1),A(2),A(3)] = sph2cart(azimuth, elevation, 10);
[B(1),B(2),B(3)] = sph2cart(azimuth, -elevation, 10);
[C(1),C(2),C(3)] = sph2cart(-azimuth, elevation, 10);
omega=2*sr4sanjiao(A,B,C);
end