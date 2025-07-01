% 测试使用
clear;

t=sr4FOV(100);
tt=sr4hl(100,100);
ttt=sr4hv(100,100);

x=1:.5:179;
[y1,y2,y3]=deal(zeros(1,length(x)));
for i =1:length(x)
    y1(i)=sr4FOV(x(i));
    y2(i)=tsr(x(i),x(i));
    y3(i)=sr4hv(x(i),x(i));
end

% 绘制图形
figure;
plot(x, y1, 'r-', 'LineWidth', 2, 'DisplayName', 'sin(x)');  % 红色实线
hold on;                    % 保持当前图形，继续添加
plot(x, y2, 'b--', 'LineWidth', 2, 'DisplayName', 'cos(x)'); % 蓝色虚线
plot(x, y3, 'g:', 'LineWidth', 2, 'DisplayName', 'exp(-x/5)');% 绿色点线
hold off;                   % 结束添加

