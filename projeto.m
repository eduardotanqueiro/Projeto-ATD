%Eduardo Carneiro 2020240332
%David

%1
%Reading data from files and storing it in matrixes
formatSpec = '%f %f %f';

fileExp1user1 = fopen('acc_exp01_user01.txt','r');
fileExp2user1 = fopen('acc_exp02_user01.txt','r');
fileExp3user2 = fopen('acc_exp03_user02.txt','r');
fileExp4user2 = fopen('acc_exp04_user02.txt','r');
fileExp5user3 = fopen('acc_exp05_user03.txt','r');
fileExp6user3 = fopen('acc_exp06_user03.txt','r');
fileExp7user4 = fopen('acc_exp07_user04.txt','r');
fileExp8user4 = fopen('acc_exp08_user04.txt','r');

dataExp1user1 = fscanf(fileExp1user1,formatSpec,[3 Inf])';
dataExp2user1 = fscanf(fileExp2user1,formatSpec,[3 Inf])';
dataExp3user2 = fscanf(fileExp3user2,formatSpec,[3 Inf])';
dataExp4user2 = fscanf(fileExp4user2,formatSpec,[3 Inf])';
dataExp5user3 = fscanf(fileExp5user3,formatSpec,[3 Inf])';
dataExp6user3 = fscanf(fileExp6user3,formatSpec,[3 Inf])';
dataExp7user4 = fscanf(fileExp7user4,formatSpec,[3 Inf])';
dataExp8user4 = fscanf(fileExp8user4,formatSpec,[3 Inf])';



%Import Activity Labels
fileLabels = fopen('labels.txt','r');
fileActivityLabels = fopen('activity_labels.txt','r');

labels = fscanf(fileLabels,'%d %d %d %d %d',[5 Inf]);
activityLabels = textscan(fileActivityLabels,'%d%s');

%Split activities
walk_Exp1_Us1 = get_activity_file(1,1,1,labels);
walk_Exp2_Us1 = get_activity_file(2,1,1,labels);
walk_Exp3_Us2 = get_activity_file(3,2,1,labels);
walk_Exp4_Us2 = get_activity_file(4,2,1,labels);
walk_Exp5_Us3 = get_activity_file(5,3,1,labels);
walk_Exp6_Us3 = get_activity_file(6,3,1,labels);
walk_Exp7_Us4 = get_activity_file(7,4,1,labels);
walk_Exp8_Us4 = get_activity_file(8,4,1,labels);

walkUp_Exp1_Us1 = get_activity_file(1,1,2,labels);
walkUp_Exp2_Us1 = get_activity_file(2,1,2,labels);
walkUp_Exp3_Us2 = get_activity_file(3,2,2,labels);
walkUp_Exp4_Us2 = get_activity_file(4,2,2,labels);
walkUp_Exp5_Us3 = get_activity_file(5,3,2,labels);
walkUp_Exp6_Us3 = get_activity_file(6,3,2,labels);
walkUp_Exp7_Us4 = get_activity_file(7,4,2,labels);
walkUp_Exp8_Us4 = get_activity_file(8,4,2,labels);

walkDown_Exp1_Us1 = get_activity_file(1,1,3,labels);
walkDown_Exp2_Us1 = get_activity_file(2,1,3,labels);
walkDown_Exp3_Us2 = get_activity_file(3,2,3,labels);
walkDown_Exp4_Us2 = get_activity_file(4,2,3,labels);
walkDown_Exp5_Us3 = get_activity_file(5,3,3,labels);
walkDown_Exp6_Us3 = get_activity_file(6,3,3,labels);
walkDown_Exp7_Us4 = get_activity_file(7,4,3,labels);
walkDown_Exp8_Us4 = get_activity_file(8,4,3,labels);

sit_Exp1_Us1 = get_activity_file(1,1,4,labels);
sit_Exp2_Us1 = get_activity_file(2,1,4,labels);
sit_Exp3_Us2 = get_activity_file(3,2,4,labels);
sit_Exp4_Us2 = get_activity_file(4,2,4,labels);
sit_Exp5_Us3 = get_activity_file(5,3,4,labels);
sit_Exp6_Us3 = get_activity_file(6,3,4,labels);
sit_Exp7_Us4 = get_activity_file(7,4,4,labels);
sit_Exp8_Us4 = get_activity_file(8,4,4,labels);

stand_Exp1_Us1 = get_activity_file(1,1,5,labels);
stand_Exp2_Us1 = get_activity_file(2,1,5,labels);
stand_Exp3_Us2 = get_activity_file(3,2,5,labels);
stand_Exp4_Us2 = get_activity_file(4,2,5,labels);
stand_Exp5_Us3 = get_activity_file(5,3,5,labels);
stand_Exp6_Us3 = get_activity_file(6,3,5,labels);
stand_Exp7_Us4 = get_activity_file(7,4,5,labels);
stand_Exp8_Us4 = get_activity_file(8,4,5,labels);

lay_Exp1_Us1 = get_activity_file(1,1,6,labels);
lay_Exp2_Us1 = get_activity_file(2,1,6,labels);
lay_Exp3_Us2 = get_activity_file(3,2,6,labels);
lay_Exp4_Us2 = get_activity_file(4,2,6,labels);
lay_Exp5_Us3 = get_activity_file(5,3,6,labels);
lay_Exp6_Us3 = get_activity_file(6,3,6,labels);
lay_Exp7_Us4 = get_activity_file(7,4,6,labels);
lay_Exp8_Us4 = get_activity_file(8,4,6,labels);

stand_to_sit_Exp1_Us1 = get_activity_file(1,1,7,labels);
stand_to_sit_Exp2_Us1 = get_activity_file(2,1,7,labels);
stand_to_sit_Exp3_Us2 = get_activity_file(3,2,7,labels);
stand_to_sit_Exp4_Us2 = get_activity_file(4,2,7,labels);
stand_to_sit_Exp5_Us3 = get_activity_file(5,3,7,labels);
stand_to_sit_Exp6_Us3 = get_activity_file(6,3,7,labels);
stand_to_sit_Exp7_Us4 = get_activity_file(7,4,7,labels);
stand_to_sit_Exp8_Us4 = get_activity_file(8,4,7,labels);

sit_to_stand_Exp1_Us1 = get_activity_file(1,1,8,labels);
sit_to_stand_Exp2_Us1 = get_activity_file(2,1,8,labels);
sit_to_stand_Exp3_Us2 = get_activity_file(3,2,8,labels);
sit_to_stand_Exp4_Us2 = get_activity_file(4,2,8,labels);
sit_to_stand_Exp5_Us3 = get_activity_file(5,3,8,labels);
sit_to_stand_Exp6_Us3 = get_activity_file(6,3,8,labels);
sit_to_stand_Exp7_Us4 = get_activity_file(7,4,8,labels);
sit_to_stand_Exp8_Us4 = get_activity_file(8,4,8,labels);

sit_to_lie_Exp1_Us1 = get_activity_file(1,1,9,labels);
sit_to_lie_Exp2_Us1 = get_activity_file(2,1,9,labels);
sit_to_lie_Exp3_Us2 = get_activity_file(3,2,9,labels);
sit_to_lie_Exp4_Us2 = get_activity_file(4,2,9,labels);
sit_to_lie_Exp5_Us3 = get_activity_file(5,3,9,labels);
sit_to_lie_Exp6_Us3 = get_activity_file(6,3,9,labels);
sit_to_lie_Exp7_Us4 = get_activity_file(7,4,9,labels);
sit_to_lie_Exp8_Us4 = get_activity_file(8,4,9,labels);

lie_to_sit_Exp1_Us1 = get_activity_file(1,1,10,labels);
lie_to_sit_Exp2_Us1 = get_activity_file(2,1,10,labels);
lie_to_sit_Exp3_Us2 = get_activity_file(3,2,10,labels);
lie_to_sit_Exp4_Us2 = get_activity_file(4,2,10,labels);
lie_to_sit_Exp5_Us3 = get_activity_file(5,3,10,labels);
lie_to_sit_Exp6_Us3 = get_activity_file(6,3,10,labels);
lie_to_sit_Exp7_Us4 = get_activity_file(7,4,10,labels);
lie_to_sit_Exp8_Us4 = get_activity_file(8,4,10,labels);

stand_to_lie_Exp1_Us1 = get_activity_file(1,1,11,labels);
stand_to_lie_Exp2_Us1 = get_activity_file(2,1,11,labels);
stand_to_lie_Exp3_Us2 = get_activity_file(3,2,11,labels);
stand_to_lie_Exp4_Us2 = get_activity_file(4,2,11,labels);
stand_to_lie_Exp5_Us3 = get_activity_file(5,3,11,labels);
stand_to_lie_Exp6_Us3 = get_activity_file(6,3,11,labels);
stand_to_lie_Exp7_Us4 = get_activity_file(7,4,11,labels);
stand_to_lie_Exp8_Us4 = get_activity_file(8,4,11,labels);

lie_to_stand_Exp1_Us1 = get_activity_file(1,1,12,labels);
lie_to_stand_Exp2_Us1 = get_activity_file(2,1,12,labels);
lie_to_stand_Exp3_Us2 = get_activity_file(3,2,12,labels);
lie_to_stand_Exp4_Us2 = get_activity_file(4,2,12,labels);
lie_to_stand_Exp5_Us3 = get_activity_file(5,3,12,labels);
lie_to_stand_Exp6_Us3 = get_activity_file(6,3,12,labels);
lie_to_stand_Exp7_Us4 = get_activity_file(7,4,12,labels);
lie_to_stand_Exp8_Us4 = get_activity_file(8,4,12,labels);
%%
%2
% Print Signal With labels on plot
print_with_labels(dataExp7user4,labels,activityLabels,7);

%%
%3
%3.1/3.2
%[x,y,z] = DFT_activity(dataExp2user1,walkUp_Exp2_Us1,activityLabels,2,0,0);
    
%decidir quais frequencias ficam para cada atividade

%3.2
x = [];
y = [];
z = [];

%walk
[auxx,auxy,auxz] = DFT_activity(dataExp1user1,walk_Exp1_Us1,activityLabels,1,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp2user1,walk_Exp2_Us1,activityLabels,1,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp3user2,walk_Exp3_Us2,activityLabels,1,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp4user2,walk_Exp4_Us2,activityLabels,1,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp5user3,walk_Exp5_Us3,activityLabels,1,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp6user3,walk_Exp6_Us3,activityLabels,1,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp7user4,walk_Exp7_Us4,activityLabels,1,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp8user4,walk_Exp8_Us4,activityLabels,1,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];

disp("Walk")
[x_walk,y_walk,z_walk] = get_freqs_filtered(x,y,z)


%walk upwards
x = [];
y = [];
z = [];

[auxx,auxy,auxz] = DFT_activity(dataExp1user1,walkUp_Exp1_Us1,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp2user1,walkUp_Exp2_Us1,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp3user2,walkUp_Exp3_Us2,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp4user2,walkUp_Exp4_Us2,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp5user3,walkUp_Exp5_Us3,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp6user3,walkUp_Exp6_Us3,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp7user4,walkUp_Exp7_Us4,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp8user4,walkUp_Exp8_Us4,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];

disp("Walk up Freqs")
[x_walkUp,y_walkUp,z_walkUp] = get_freqs_filtered(x,y,z)

%walk down
x = [];
y = [];
z = [];

[auxx,auxy,auxz] = DFT_activity(dataExp1user1,walkDown_Exp1_Us1,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp2user1,walkDown_Exp2_Us1,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp3user2,walkDown_Exp3_Us2,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp4user2,walkDown_Exp4_Us2,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp5user3,walkDown_Exp5_Us3,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp6user3,walkDown_Exp6_Us3,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp7user4,walkDown_Exp7_Us4,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp8user4,walkDown_Exp8_Us4,activityLabels,2,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
disp("Walk Down Freqs")
[x_walkDown,y_walkDown,z_walkDown] = get_freqs_filtered(x,y,z)

%Sit
x = [];
y = [];
z = [];
[auxx,auxy,auxz] = DFT_activity(dataExp1user1,sit_Exp1_Us1,activityLabels,4,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp2user1,sit_Exp2_Us1,activityLabels,4,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp3user2,sit_Exp3_Us2,activityLabels,4,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp4user2,sit_Exp4_Us2,activityLabels,4,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp5user3,sit_Exp5_Us3,activityLabels,4,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp6user3,sit_Exp6_Us3,activityLabels,4,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp7user4,sit_Exp7_Us4,activityLabels,4,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp8user4,sit_Exp8_Us4,activityLabels,4,0,0);

disp("Sit Freqs")
[x_sit,y_sit,z_sit] = get_freqs_filtered(x,y,z)

%Stand
x = [];
y = [];
z = [];
[auxx,auxy,auxz] = DFT_activity(dataExp1user1,stand_Exp1_Us1,activityLabels,5,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp2user1,stand_Exp2_Us1,activityLabels,5,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp3user2,stand_Exp3_Us2,activityLabels,5,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp4user2,stand_Exp4_Us2,activityLabels,5,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp5user3,stand_Exp5_Us3,activityLabels,5,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp6user3,stand_Exp6_Us3,activityLabels,5,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp7user4,stand_Exp7_Us4,activityLabels,5,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp8user4,stand_Exp8_Us4,activityLabels,5,0,0);

disp("Stand Freqs")
[x_stand,y_stand,z_stand] = get_freqs_filtered(x,y,z)


%Lay
x = [];
y = [];
z = [];
[auxx,auxy,auxz] = DFT_activity(dataExp1user1,lay_Exp1_Us1,activityLabels,6,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp2user1,lay_Exp2_Us1,activityLabels,6,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp3user2,lay_Exp3_Us2,activityLabels,6,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp4user2,lay_Exp4_Us2,activityLabels,6,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp5user3,lay_Exp5_Us3,activityLabels,6,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp6user3,lay_Exp6_Us3,activityLabels,6,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp7user4,lay_Exp7_Us4,activityLabels,6,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp8user4,lay_Exp8_Us4,activityLabels,6,0,0);

disp("Lay Freqs")
[x_lay,y_lay,z_lay] = get_freqs_filtered(x,y,z)

%Stand to sit
x = [];
y = [];
z = [];
[auxx,auxy,auxz] = DFT_activity(dataExp1user1,stand_to_sit_Exp1_Us1,activityLabels,7,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp2user1,stand_to_sit_Exp2_Us1,activityLabels,7,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp3user2,stand_to_sit_Exp3_Us2,activityLabels,7,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp4user2,stand_to_sit_Exp4_Us2,activityLabels,7,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp5user3,stand_to_sit_Exp5_Us3,activityLabels,7,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp6user3,stand_to_sit_Exp6_Us3,activityLabels,7,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp7user4,stand_to_sit_Exp7_Us4,activityLabels,7,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp8user4,stand_to_sit_Exp8_Us4,activityLabels,7,0,0);

disp("Stand to sit Freqs")
[x_stand_to_sit,y_stand_to_sit,z_stand_to_sit] = get_freqs_filtered(x,y,z)

%Sit to stand
x = [];
y = [];
z = [];
[auxx,auxy,auxz] = DFT_activity(dataExp1user1,sit_to_stand_Exp1_Us1,activityLabels,8,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp2user1,sit_to_stand_Exp2_Us1,activityLabels,8,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp3user2,sit_to_stand_Exp3_Us2,activityLabels,8,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp4user2,sit_to_stand_Exp4_Us2,activityLabels,8,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp5user3,sit_to_stand_Exp5_Us3,activityLabels,8,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp6user3,sit_to_stand_Exp6_Us3,activityLabels,8,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp7user4,sit_to_stand_Exp7_Us4,activityLabels,8,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp8user4,sit_to_stand_Exp8_Us4,activityLabels,8,0,0);

disp("Sit to stand Freqs")
[x_sit_to_stand,y_sit_to_stand,z_sit_to_stand] = get_freqs_filtered(x,y,z)

%Sit to lie
x = [];
y = [];
z = [];
[auxx,auxy,auxz] = DFT_activity(dataExp1user1,sit_to_lie_Exp1_Us1,activityLabels,9,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp2user1,sit_to_lie_Exp2_Us1,activityLabels,9,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp3user2,sit_to_lie_Exp3_Us2,activityLabels,9,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp4user2,sit_to_lie_Exp4_Us2,activityLabels,9,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp5user3,sit_to_lie_Exp5_Us3,activityLabels,9,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp6user3,sit_to_lie_Exp6_Us3,activityLabels,9,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp7user4,sit_to_lie_Exp7_Us4,activityLabels,9,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp8user4,sit_to_lie_Exp8_Us4,activityLabels,9,0,0);

disp("Sit to lioe Freqs")
[x_sit_to_lie,y_sit_to_lie,z_sit_to_lie] = get_freqs_filtered(x,y,z)

%3.5
function[num_verified, num_not_identified] = try_identify(file,times,ativity_freqs_ranges)
    
    %a - numero de vezes que a atividade aparece neste ficheiro
    [a b] = size(times);

    %if activity only appears once in the file
    if a == 1
        flag_line = 1;
    else
        flag_line = 0;
    end

    num_verified = 0;
    num_not_identified = a;

    for i = 1:length(times)
        
        
        if flag_line == 1
            dft_x = fftshift( fft( file(times(1):times(2) ,1) ) ) ;
            dft_y = fftshift( fft( file(times(1):times(2) ,2) ) ) ;
            dft_z = fftshift( fft( file(times(1):times(2) ,3) ) ) ;
        else
            dft_x = fftshift( fft( file(times(i,1):times(i,2) ,1) ) ) ;
            dft_y = fftshift( fft( file(times(i,1):times(i,2) ,2) ) ) ;
            dft_z = fftshift( fft( file(times(i,1):times(i,2) ,3) ) ) ;
        end

        N = length(dft_x);
        fq = [-fs/2:fs/N:fs/2-fs/N];

        %get positive values
        m_x = abs(dft_x)/N;
        m_y = abs(dft_y)/N;
        m_z = abs(dft_z)/N;
        

        %clean
        m_x( m_x<0.001)=0;
        m_y( m_y<0.001)=0;
        m_z( m_z<0.001 )=0;
        
        m_x( abs(fq) <0.15) = 0;
        m_y( abs(fq) <0.15) = 0;
        m_z( abs(fq) <0.15) = 0;

        threshold_x = 0.8*max(m_x);
        threshold_y = 0.8*max(m_y);
        threshold_z = 0.8*max(m_z);


        %find relevant frequencies for each axis
        %X
        [pks,locs] = findpeaks(m_x,'MinPeakHeight',threshold_x);
        f_relevant_x = fq(locs);
        x = [x,f_relevant_x( f_relevant_x>0 )];
        
        %Y
        [pks,locs] = findpeaks(m_y,'MinPeakHeight',threshold_y);
        f_relevant_y = fq(locs);
        y = [y,f_relevant_y( f_relevant_y>0 )]; 

        %Z
        [pks,locs] = findpeaks(m_z,'MinPeakHeight',threshold_z);
        f_relevant_z = fq(locs);
        z = [z,f_relevant_z( f_relevant_z>0 )];

        %TODO
        %CHECKAR SE ESTES VALORES ESTÃO ENTRE OS INTERVALOS ESTABELECIDOS
        %NO 3.2

        
    end

end

%3.2
function[xf,yf,zf] = get_freqs_filtered(x,y,z)
        
    xf = [];
    yf = [];
    zf = [];
    step = 2;
    
    %X
    for k = 0:step:max(x)
        
        intervalo = x( x>k &x <k+step );

        desvio_pad = std(intervalo);
        med = mean( intervalo );
        nr_elem = length( intervalo );

        xf = [xf;[med-desvio_pad,med+desvio_pad,nr_elem]];
    end
    
    %filter the frequencias by the groups that have the most  values
    %criar intervalo com base na media e no desvio padrao
    %meter a 0 caso o limite inferior seja inferior a 0
    number_max_freqs = max(xf(:,3));
    xf = xf( xf(:,3) >= 0.5*number_max_freqs , 1:2 );
    xf( : , xf(:,1) < 0) = 0;

    %Y
    for k = 0:step:max(y)
        
        intervalo = y( y>k & y <k+step );

        desvio_pad = std(intervalo);
        med = mean( intervalo );
        nr_elem = length( intervalo );

        yf = [yf;[med-desvio_pad,med+desvio_pad,nr_elem]];
    end
    
    number_max_freqs = max(yf(:,3));
    yf = yf( yf(:,3) >= 0.5*number_max_freqs , 1:2 );
    yf( : , yf(:,1) < 0) = 0;

    %Z
    for k = 0:step:max(z)
        
        intervalo = z( z>k & z <k+step );

        desvio_pad = std(intervalo);
        med = mean( intervalo );
        nr_elem = length( intervalo );

        zf = [zf;[med-desvio_pad,med+desvio_pad,nr_elem]];
    end

    number_max_freqs = max(zf(:,3));
    zf = zf( zf(:,3) >= 0.5*number_max_freqs , 1:2 );
    zf( : , zf(:,1) < 0) = 0;

end


%3.1
function[x,y,z] = DFT_activity(file,times,activityLabels,activity,plot_magnitude,plot_freqs)
    
    fs = 50; %Hz, sampling frequency
    x = [];
    y = [];
    z = [];
    
    [a b] = size(times);
    
    %if activity only appears once in the file
    if a == 1
        flag_line = 1;
    else
        flag_line = 0;
    end


    for i = 1:length(times)
        
        
        if flag_line == 1
            dft_x = fftshift( fft( file(times(1):times(2) ,1) ) ) ;
            dft_y = fftshift( fft( file(times(1):times(2) ,2) ) ) ;
            dft_z = fftshift( fft( file(times(1):times(2) ,3) ) ) ;
        else
            dft_x = fftshift( fft( file(times(i,1):times(i,2) ,1) ) ) ;
            dft_y = fftshift( fft( file(times(i,1):times(i,2) ,2) ) ) ;
            dft_z = fftshift( fft( file(times(i,1):times(i,2) ,3) ) ) ;
        end

        N = length(dft_x);
        fq = [-fs/2:fs/N:fs/2-fs/N];

        %get positive values
        m_x = abs(dft_x)/N;
        m_y = abs(dft_y)/N;
        m_z = abs(dft_z)/N;
        


        %clean
        m_x( m_x<0.001)=0;
        m_y( m_y<0.001)=0;
        m_z( m_z<0.001 )=0;
        
        m_x( abs(fq) <0.15) = 0;
        m_y( abs(fq) <0.15) = 0;
        m_z( abs(fq) <0.15) = 0;

        threshold_x = 0.8*max(m_x);
        threshold_y = 0.8*max(m_y);
        threshold_z = 0.8*max(m_z);



        if plot_magnitude == 1
            figure(4);

            %plot DFTS MAGNITUDE
            nexttile;
            yline(threshold_x);
            hold on;
            plot(fq,m_x)
            title('|DFT| do sinal eixo X'); 
            ylabel('Magnitude = |X|');
            xlabel('f [Hz]');
            
            nexttile;
            yline(threshold_y);
            hold on;
            plot(fq,m_y)
            title('|DFT| do sinal eixo Y'); 
            ylabel('Magnitude = |X|');
            xlabel('f [Hz]');

            nexttile;
            yline(threshold_z);
            hold on;
            plot(fq,m_z)
            title('|DFT| do sinal eixo Z'); 
            ylabel('Magnitude = |X|');
            xlabel('f [Hz]');

        end

        %find relevant frequencies for each axis
        %erro algures aqui
        %X
        [pks,locs] = findpeaks(m_x,'MinPeakHeight',threshold_x);
        f_relevant_x = fq(locs);
        x = [x,f_relevant_x( f_relevant_x>0 )];
        
        %Y
        [pks,locs] = findpeaks(m_y,'MinPeakHeight',threshold_y);
        f_relevant_y = fq(locs);
        y = [y,f_relevant_y( f_relevant_y>0 )]; 

        %Z
        [pks,locs] = findpeaks(m_z,'MinPeakHeight',threshold_z);
        f_relevant_z = fq(locs);
        z = [z,f_relevant_z( f_relevant_z>0 )];
        

        if plot_freqs == 1
            
            figure(5);
            m_x_zeros = m_x;
            for k =1:length(fq) 
                if( ~ismember(fq(k),f_relevant_x))
                    m_x_zeros(k) = 0;
                end
            end
            %m_x_zeros( m_x_zeros < threshold_x) = 0;
            
            m_y_zeros = m_y;
            for k =1:length(fq) 
                if( ~ismember(fq(k),f_relevant_y))
                    m_y_zeros(k) = 0;
                end
            end
            %m_y_zeros( m_y_zeros < threshold_y) = 0;

            m_z_zeros = m_z;
            for k =1:length(fq) 
                if( ~ismember(fq(k),f_relevant_z))
                    m_z_zeros(k) = 0;
                end
            end
            %m_z_zeros( m_z_zeros < threshold_z) = 0;

            %plot relevant freqs
            nexttile;
            hold on;
            plot(fq,m_x_zeros)
            title('Frequencias relevantes do sinal eixo X'); 
            ylabel('Magnitude = |X|');
            xlabel('f [Hz]');
            
            nexttile;
            hold on;
            plot(fq,m_y_zeros)
            title('Frequencias relevantes do sinal eixo Y'); 
            ylabel('Magnitude = |X|');
            xlabel('f [Hz]');

            nexttile;
            hold on;
            plot(fq,m_z_zeros)
            title('Frequencias relevantes do sinal eixo Z'); 
            ylabel('Magnitude = |X|');
            xlabel('f [Hz]');
        end

    end

end


function [] = print_with_labels(file_data,labels,activityLabels,experiencia)
   
      i = 1;
    j = i;
    x_vals = [];
    activity = {};
    
    %Get Labels
    while(labels(1,i) ~= experiencia)
        i = i+1;
    end

    while (labels(1,i) == experiencia)
        x_vals = [ x_vals, labels(4,i)];
        activity{j} = activityLabels{2}{labels(3,i)};
        
        i = i+1;
        j = j+1;
    end
    

    %X
    nexttile
    plot([1:length(file_data)],file_data(:,1))
    title("X")

      xticks(x_vals);
    xticklabels(activity)

    
    %Y
    nexttile
    plot([1:length(file_data)],file_data(:,2))
    title("Y")

    xticks(x_vals);
    xticklabels(activity)
    
    %Z
    nexttile
    plot([1:length(file_data)],file_data(:,3))
    title("Z")
   
    xticks(x_vals);
    xticklabels(activity)

end


function fin = get_activity_file(experience,user,activity,labels)
         
    fin = [];
    i = 1;

    %find correct file lines for the user given
    while (labels(2,i) ~= user)
        i = i+1;
    end

    while( labels(1,i) ~= experience)
        i = i+1;
    end

    %get frames for the activity requested
    while( labels(2,i) == user  && labels(1,i) == experience)
        
        if( labels(3,i) == activity)
            fin = [fin ; [labels(4,i) , labels(5,i)] ];
        end
        i = i+1;
    end


end
