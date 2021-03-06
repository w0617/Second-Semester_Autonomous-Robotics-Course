%Autonomous Robotics
%Lab 5: Graph search - A star Algorithm 
%Author: Nayee Muddin Khan Dousai


close all;
clear;
clc;

%drawing map vertices and edges

%% 

%small map
%vertices=[0.7807 9.0497 0; 3.0322 8.9912 1; 1.3655 6.7105 1; 4.1140 4.0497 1; 6.2778 8.2310 1; 8.2953 5.8333 2; 5.6345 2.617 2; 9.1433 1.9152 2; 11.4825 6.9444 2; 10.2544 0.5702 3]
%edges = [1 3;
%      1 2;
%      2 3;
%      3 4;
%      4 6;
%      4 7;
%      4 5;
%      5 7;
%      5 6;
%      5 9;
%      5 2;
%      6 7;
%      7 10;
%      7 8;
%      8 10;
%      8 9;
%      9 10;
%      9 6];

%% 


% %concave maps for different polygons

%  vertices = [0.6053 7.9971 0;
%     1.0439 6.8567 1.0000;
%     2.9737 8.2602 1.0000;
%     3.9386 6.3304 1.0000;
%     1.9795 5.3655 1.0000;
%     10.3713 1.5351 6.0000];
%   edges =[1 3;
%      1 2;
%      2 3;
%      3 6;
%      3 4;
%      4 6;
%      4 5;
%      5 6;
%      5 2];


%% 
    
% vertices = [0.6053 7.9971 0;
%     6.4532 8.3187 2.0000;
%     5.1959 6.6228 2.0000;
%     6.3070 4.6637 2.0000;
%     8.7339 6.2719 2.0000;
%     8.4708 7.8801 2.0000;
%     10.3713 1.5351 6.0000];
%   edges =[1 2;
%      1 7;
%      1 4;
%      1 3;
%      2 3;
%      3 4;
%      4 7;
%      4 5;
%      5 7;
%      5 6;
%      6 7;
%      6 2];

%% 
% vertices = [0.6053 7.9971 0;
%     3.2368 4.8684 3.0000
%     0.8684 3.9620 3.0000
%     1.2485 2.5585 3.0000
%     3.3538 2.4123 3.0000
%     4.8450 4.0497 3.0000
%     10.3713 1.5351 6.0000];

% edges = [1 3;
%      1 2;
%      1 6;
%      1 7;
%      2 7;
%      2 3;
%      3 4;
%      4 7;
%      4 5;
%      5 7;
%      5 6;
%      6 7;
%      6 2];


%% 

%vertices = [0.6053 7.9971 0;
%     6.5994 3.9327 4.0000;
%     6.5409 2.0906 4.0000;
%     8.5877 2.2076 4.0000;
%     8.6170 4.6053 4.0000;
%     10.3713 1.5351 6.0000];

%edges =[1 3;
%      1 2;
%      1 5;
%      2 3;
%      3 6;
%      3 4;
%      4 6;
%      4 5;
%      5 6;
%      5 2];

%% 

% vertices = [0.6053 7.9971 0;
%     9.4357 7.2368 5.0000;
%     11.1608 4.0789 5.0000;
%     10.3129 7.9094 5.0000;
%     10.3713 1.5351 6.0000];
% 
% edges =[1 5;
%      1 3;
%      1 2;
%      1 4;
%      2 5;
%      2 3;
%      3 5;
%      3 4;
%      4 2];
 
 %% 
 
% vertices = [0.6053 7.9971 0;
%     1.0439 6.8567 1.0000;
%     2.9737 8.2602 1.0000;
%     3.9386 6.3304 1.0000;
%     1.9795 5.3655 1.0000;
%     6.4532 8.3187 2.0000;
%     5.1959 6.6228 2.0000;
%     6.3070 4.6637 2.0000;
%     8.7339 6.2719 2.0000;
%     8.4708 7.8801 2.0000
%     10.3713 1.5351 6.0000];
% 
% edges =[1 3;
%      1 2;
%      2 3;
%      3 6;
%      3 8;
%      3 7;
%      3 4;
%      4 7;
%      4 6;
%      4 11;
%      4 8;
%      4 5;
%      5 7;
%      5 11;
%      5 8
%      5 2;
%      6 7;
%      7 8;
%      8 11;
%      8 9;
%      9 11;
%      9 10;
%     10 11;
%     10 6];
 

%% 

%two polygons , Small Environment
% vertices = [0.7807 9.0497 0;
% 3.0322 8.9912 1.0000;
% 1.3655 6.7105 1.0000;
% 4.1140 4.0497 1.0000;
% 6.2778 8.2310 1.0000;
% 8.2953 5.8333 2.0000;
% 5.6345 2.6170 2.0000;
% 9.1433 1.9152 2.0000;
% 11.4825 6.9444 2.0000;
% 10.2544 0.5702 3.0000];
% 
%  
% edges= [1 3;
% 1 2;
% 2 3;
% 2 5;
% 3 4;
% 4 6;
% 4 5;
% 4 7;
% 5 7;
% 5 6;
% 5 9;
% 6 9;
% 6 7;
% 7 10;
% 7 8;
% 8 9;
% 8 10;
% 9 10];


%% 

% %large environment
vertices =[0.6053 7.9971 0;
1.0439 6.8567 1.0000;
2.9737 8.2602 1.0000;
3.9386 6.3304 1.0000;
1.9795 5.3655 1.0000;
6.4532 8.3187 2.0000;
5.1959 6.6228 2.0000;
6.3070 4.6637 2.0000;
8.7339 6.2719 2.0000;
8.4708 7.8801 2.0000;
3.2368 4.8684 3.0000;
0.8684 3.9620 3.0000;
1.2485 2.5585 3.0000;
3.3538 2.4123 3.0000;
4.8450 4.0497 3.0000;
6.5994 3.9327 4.0000;
6.5409 2.0906 4.0000;
8.5877 2.2076 4.0000;
8.6170 4.6053 4.0000;
9.4357 7.2368 5.0000;
11.1608 4.0789 5.0000;
10.3129 7.9094 5.0000;
10.3713 1.5351 6.0000];

edges =[1 3;
1 12;
1 2;
2 3;
2 12;
2 5;
3 6;
3 4;
3 17;
3 16;
3 8;
3 7;
4 7;
4 6;
4 5;
4 12;
4 11;
4 15;
4 17;
4 16;
4 8;
5 7;
5 12;
5 11;
5 16;
5 8;
6 11;
6 7;
6 10;
6 22;
7 12;
7 11;
7 15;
7 17;
7 16;
7 8;
8 9;
8 11;
8 15;
8 14;
8 17;
8 16;
8 19;
9 20;
9 10;
9 14;
9 16;
9 19;
9 18;
9 23;
9 21;
10 22;
10 23;
10 21;
10 20;
11 12;
11 15;
11 16;
12 13;
13 23;
13 17;
13 14;
14 16;
14 15;
14 23;
14 17;
15 19;
15 17;
15 16;
16 19;
16 17;
17 18;
17 23;
18 21;
18 20;
18 19;
18 23;
19 20;
19 23;
19 21;
20 22;
20 23;
20 21;
21 22;
21 23];

%% For different polygons
% vertices =[0.6053 7.9971 0;
% 1.0439 6.8567 1.0000;
% 2.9737 8.2602 1.0000;
% 3.9386 6.3304 1.0000;
% 1.9795 5.3655 1.0000;
% 6.4532 8.3187 2.0000;
% 5.1959 6.6228 2.0000;
% 6.3070 4.6637 2.0000;
% 8.7339 6.2719 2.0000;
% 8.4708 7.8801 2.0000;
% 6.5994 3.9327 4.0000;
% 6.5409 2.0906 4.0000;
% 8.5877 2.2076 4.0000;
% 8.6170 4.6053 4.0000;
% 10.3713 1.5351 6.0000];
% edges =[1 3;
%      1 2;
%      2 3;
%      3 6;
%      3 12;
%      3 11;
%      3 8;
%      3 7;
%      3 4;
%      4 7;
%      4 6;
%      4 12;
%      4 11;
%      4 8;
%      4 5;
%      5 7;
%      5 12;
%      5 11;
%      5 8;
%      5 2;
%      6 7;
%      7 12;
%      7 11;
%      7 8;
%      8 12;
%      8 11;
%      8 14;
%      8 9;
%      9 11;
%      9 14;
%      9 13;
%      9 15;
%      9 10;
%     10 15;
%     10 6;
%     11 12;
%     12 15;
%     12 13;
%     13 15;
%     13 14;
%     14 15;
%     14 11];


%% 
%calling the A STAR algorithm function

%edges = RPS(vertices); % To get edges by using RPS Algorithm 
[path,minCost]=Astar(vertices, edges);
plot_Astar(vertices,edges,path);

%% Function to plot 

function plot_Astar(vertices, edges, path)
figure;hold on;
% First plot all the available route
for i = 1 : size(edges,1)
    plot([vertices(edges(i,1),1),vertices(edges(i,2),1)],[vertices(edges(i,1),2),vertices(edges(i,2),2)],'r');
end
% Second plot the vertices
for i = 1 : size(vertices,1)
    plot(vertices(i,1),vertices(i,2),'bo','MarkerSize', 2);
    text(vertices(i,1),vertices(i,2),num2str(i),'HorizontalAlignment','left','FontSize',10);
end
% Third plot the polygons
for i = 2 : size(vertices,1) - 1
    if vertices(i + 1,3) ~= vertices(i,3) 
        num_v = sum(vertices(:,3) == vertices(i,3)); % Number of vertices in the current polygon
        plot([vertices(i,1),vertices(i-num_v+1,1)],[vertices(i,2),vertices(i-num_v+1,2)],'b-','LineWidth',1);
    else
        plot([vertices(i,1),vertices(i+1,1)],[vertices(i,2),vertices(i+1,2)],'b-','LineWidth',1);
    end
end
% Finally plot the path
for i = 1 : size(path,2)-1
    plot([vertices(path(i),1),vertices(path(i + 1),1)],[vertices(path(i),2), vertices(path(i + 1), 2)],'g-','LineWidth',1.5);
end
hold off;
end






