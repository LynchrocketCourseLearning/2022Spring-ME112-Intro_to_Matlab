%%for test


%%
function running
clc;clear all;

obstacleIsPicked = 0;
xobstacle = 0;
yobstacle = 0;
x = 0;
y = 0;
z = 0.5;
fps = 8;
game = timer('ExecutionMode', 'FixedRate', 'Period',1/fps, 'TimerFcn', @begingame, 'StartFcn',@initialization);
start(game);
set(gcf,'tag','co','CloseRequestFcn',@clo);
f = gcf;
f.KeyPressFcn = @keyboard;



% initialize the game
function initialization(~,~)
    x = 0;
    y = 0;
    z = 0.5;
    obstacleIsPicked = 0;
    yobstacle = 0;
    xobstacle = 0;
    music = canon;
    fs = 44100;
    sound(music,fs);
end

% close the game
function clo(~,~)
	stop(game)
	delete(game)
	delete(findobj('tag','co'));
    clear sound;
	clf;
	close;
end

% begin the game every time timer trigger
function begingame(~,~)
    y = y + 1;
	view(25,13);
        
    s = sphere(20);
       
	[xd, yd, zd] = sphere();
        
	s = surf(0.5*xd +x, 0.5*yd + y, 0.5*zd + z);
   
	s.FaceColor = 'interp';
    colormap("summer");
	s.EdgeColor = 'none';
    if y == 1
        l = light('Position',[-0.4 0.2 0.9],'Style','infinite');
    end  
	lighting gouraud;
	material shiny;

        %xlabel('x');
        %ylabel('y');
        %zlabel('z');
        
        axis("equal");
        axis off;
        
        xlim([-1.5 +1.5]);
        ylim([y-0.5 y+10]);
        zlim([0 3]);
        hold on;
        %grid on;
        
        % build the bottom
        bottom_x = [-1.5 1.5];
        bottom_y = [y-0.5 y+10];
        bottom_z = zeros(length(bottom_x),length(bottom_y));
        bottom = surf(bottom_x,bottom_y,bottom_z);
        bottom.EdgeColor = "none";
        bottom.FaceColor = [0.50,0.50,0.50];
        hold on;
        % build the lines
        plot3([-0.5,-0.5], [y-0.5, y+10],[0,0],'black','LineWidth',1,'LineStyle','--');
        plot3([0.5, 0.5], [y-0.5, y+10],[0,0],'black','LineWidth',1,'LineStyle','--');
        % build the obstacle
        xo = randi(3) - 2.5;
        yo = y + 8;
        if y > 8 && mod(y , 8) == 0
            PlotCuboid([xo,yo,0] , [1,1,1]);
            hold on;
            if obstacleIsPicked == 0
                xobstacle = xo;
                yobstacle = yo;
                obstacleIsPicked = 1;
            end
        end
        % 
        % check whether the ball attacks the obstacles
        if y == yobstacle && yobstacle > 8 && obstacleIsPicked == 1
        	if(xobstacle+0.5 == x && z == 0.5)
                endgame;
            end
            obstacleIsPicked = 0;
        end
        if z ==1.5 && mod(y,10)==0
                z = 0.5;
        end
        title(['Scores: ' num2str(y)],'FontName', 'Helvetica', 'FontSize', 20, 'FontWeight', 'Bold', 'HorizontalAlignment', 'center','Color',[1 0.5 1]);
end

%function to react to the keyborad
function keyboard(~,event)
    switch event.Key
        case 'uparrow'
            if z == 0.5
                z = z+1;
            end
        case 'downarrow'
            z = z-1;
        case 'rightarrow'
            if x < 1
                x = x + 1;
            end
        case 'leftarrow'
            if x > -1
                x = x - 1;
            end
	end
end

% plot the obstacles
function PlotCuboid(originPoint,cuboidSize)
%% 函数功能： 绘制长方体
% 输入：
%       originPoint：长方体的原点,行向量，如[0，0，0];
%       cuboidSize：长方体的长宽高,行向量，如[10，20，30];
% 输出：长方体图形

%% 根据原点和尺寸，计算长方体的8个的顶点
vertexIndex=[0 0 0;0 0 1;0 1 0;0 1 1;1 0 0;1 0 1;1 1 0;1 1 1];
vertex=originPoint+vertexIndex.*cuboidSize;

%% 定义6个平面分别对应的顶点
facet=[1 2 4 3;1 2 6 5;1 3 7 5;2 4 8 6;3 4 8 7;5 6 8 7];

%% 定义8个顶点的颜色，绘制的平面颜色根据顶点的颜色进行插补
color=[1;2;3;4;5;6;7;8];


%% 绘制并展示图像
% patch 对图像进行绘制。
% view(3) 将图像放到三维空间中展示。
% 其余的是设置背景等等
p2 = patch('Vertices',vertex,'Faces',facet);
p2.FaceVertexCData = color;

%p2.FaceVertexCData = color;
p2.FaceColor = 'interp';

p2.EdgeColor = 'none';
material shiny;

%view(3);


%fig=gcf;
%fig.Color=[1 1 1];
%fig.Name='cuboid';
%fig.NumberTitle='off';

end
    
% end this game  
function endgame(~,~)
    buttonName1=questdlg('Ops!. Do you want to play again?','Game Over','close','restart','close');
	if isempty(buttonName1)
        buttonName1='end';
    end
	if strcmp(buttonName1,'restart')
        clear sound;
        clf;
        initialization;
    elseif strcmp(buttonName1,'close')
        clo;
    end
end

end



