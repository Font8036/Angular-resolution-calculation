% 计算角分辨率。
% 这里的角分辨率指的是每deg²上的像素数量，是一个平均值。
% 但是实际上的VR显示器也好，VR视频也好，都有边缘效应，也就是视野边缘的分辨率要低一点，
% 而且畸变也更明显一点，相对的，视野中心的分辨率则会高一些，也就是如果只看视野中心的话，
% 角分辨率应当是比全视野平均下来求得的角分辨率要高。
% 厂家一般宣传的角分辨率计算方法为PPD=每眼的水平像素数/水平视角FOV。
% 下表给出了不同分辨率的普通屏幕与各VR产品的相关数据，数据主要来源于京东的商品详情页。

clear;

HD=720*1280;
FHD=1080*1920;
k2=1440*2560;
k4=2160*3840;
k8=4320*7680;




% 首先考虑普通屏幕的角分辨率
% 采用人眼距离屏幕对角线远来计算。可以调整这个数据。
% 几何模型为人眼正对方形屏幕的中心，也即满足使用sr4abd函数的条件。
putong=sr2deg(sr4abd(16,9,sqrt(16*16+9*9)));%普通屏幕的立体角
dengxiaoFOV=FOV4sr(sr4abd(16,9,sqrt(16*16+9*9)));

% 由于VR资源还有显示器都是左右两部分，所以分辨率天然就要除以2。
% VR设备


% 计算比值
results = [HD, FHD, k2, k4, k8] / putong;

% 横坐标（1到5）和标签
x = 1:5;
labels = {'HD', 'FHD', 'k2', 'k4', 'k8'};

% 绘制散点图
figure;
scatter(x, results, 100, 'filled'); % 100 是点的大小
title('分辨率与 putong 的比值');
xlabel('序号');
ylabel('结果 (分辨率 / putong)');
grid on;

% 设置横坐标标签
xticks(x);
xticklabels(labels);

% 在每个点旁边添加变量名标签（可选）
for i = 1:length(x)
    text(x(i), results(i), labels{i}, ...
        'VerticalAlignment', 'bottom', ...
        'HorizontalAlignment', 'right', ...
        'FontSize', 10);
end

% 调整图形样式
set(gca, 'FontSize', 12); % 设置坐标轴字体大小









