function omega = sr4hv(h,v)
% 使用水平可视角度HFOV与竖直可视角度VFOV计算立体角（球面度，sr）
% 输入：
%     v - 竖直可视角度，范围[0, 180]
%     h - 水平可视角度，范围[0, 180]
% 输出：
%     omega - 立体角（sr）
H=deg2rad(h);
V=deg2rad(v);
% 直接使用公式进行计算，结果与使用sr4abd方法的tsr4hv的结果一致。
omega=4*asin(sin(H/2)*sin(V/2));
end