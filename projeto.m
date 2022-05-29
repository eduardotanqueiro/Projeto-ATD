%Eduardo Carneiro 2020240332
%David Silva 

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
print_with_labels(dataExp5user3,labels,activityLabels,5);

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
[x_walk,y_walk,z_walk,med_x_walk,med_t_walk,med_z_walk] = get_freqs_filtered(x,y,z)


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
[x_walkUp,y_walkUp,z_walkUp,med_x_walkUp,med_t_walkUp,med_z_walkUp] = get_freqs_filtered(x,y,z)

%walk down
x = [];
y = [];
z = [];

[auxx,auxy,auxz] = DFT_activity(dataExp1user1,walkDown_Exp1_Us1,activityLabels,3,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp2user1,walkDown_Exp2_Us1,activityLabels,3,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp3user2,walkDown_Exp3_Us2,activityLabels,3,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp4user2,walkDown_Exp4_Us2,activityLabels,3,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp5user3,walkDown_Exp5_Us3,activityLabels,3,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp6user3,walkDown_Exp6_Us3,activityLabels,3,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp7user4,walkDown_Exp7_Us4,activityLabels,3,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];
[auxx,auxy,auxz] = DFT_activity(dataExp8user4,walkDown_Exp8_Us4,activityLabels,3,0,0);
x = [x,auxx];y =[y,auxy];z =[ z,auxz];

disp("Walk Down Freqs")
[x_walkDown,y_walkDown,z_walkDown,med_x_walkDown,med_t_walkDown,med_z_walkDown] = get_freqs_filtered(x,y,z)


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
x = [x,auxx];y =[y,auxy];z =[ z,auxz];

disp("Sit Freqs")
[x_sit,y_sit,z_sit,med_x_sit,med_t_sit,med_z_sit] = get_freqs_filtered(x,y,z)

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
x = [x,auxx];y =[y,auxy];z =[ z,auxz];

disp("Stand Freqs")
[x_stand,y_stand,z_stand,med_x_stand,med_t_stand,med_z_stand] = get_freqs_filtered(x,y,z)


%Lay
x = [];
y = [];
z = [];
[auxx,auxy,auxz] = DFT_activity(dataExp1user1,lay_Exp1_Us1,activityLabels,6,1,1);
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
x = [x,auxx];y =[y,auxy];z =[ z,auxz];

disp("Lay Freqs")
[x_lay,y_lay,z_lay,med_x_lay,med_t_lay,med_z_lay] = get_freqs_filtered(x,y,z)


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
x = [x,auxx];y =[y,auxy];z =[ z,auxz];

disp("Stand to sit Freqs")
[x_stand_to_sit,y_stand_to_sit,z_stand_to_sit,med_x_stand_to_sit,med_t_stand_to_sit,med_z_stand_to_sit] = get_freqs_filtered(x,y,z)

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
x = [x,auxx];y =[y,auxy];z =[ z,auxz];

disp("Sit to stand Freqs")
[x_sit_to_stand,y_sit_to_stand,z_sit_to_stand,med_x_sit_to_stand,med_t_sit_to_stand,med_z_sit_to_stand] = get_freqs_filtered(x,y,z)

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
x = [x,auxx];y =[y,auxy];z =[ z,auxz];

disp("Sit to lie Freqs")
[x_sit_to_lie,y_sit_to_lie,z_sit_to_lie,med_x_sit_to_lie,med_t_sit_to_lie,med_z_sit_to_lie] = get_freqs_filtered(x,y,z)
%%
%3.3
%Calcular passos para ativdadas dinâmicas
num_steps_walk = calculate_steps(x_walk)
num_steps_walkUp = calculate_steps(x_walkUp)
num_steps_walkDown = calculate_steps(x_walkDown)

%%
%3.4
%mean transition size
%act = labels( 4:5, labels(3,:) >= 6);
%med_transicao = abs( sum(act(2,:)) - sum(act(1,:)) ) / length(act);

try_identify_class(dataExp5user3,labels,5,1);


%%
%3.5
[t1,t2] = try_identify(dataExp7user4,labels,7)


%%
%4
%4.1
%ficheiro escolhido: user1 experiencia 2
test_windows_stft(dataExp2user1,walk_Exp2_Us1)

%stft(dataExp2user1(:,1),50,'Window',kaiser(256,5))


%%
%FUNCTIONS

%4.2
function [stft] = calculate_stft(segment,win_size)

    stft = [];

    if ( mod(win_size,2) == 0 )
        f_frame=-50/2:50/win_size:50/2-50/win_size;
    else
        f_frame=-50/2+50*(2*win_size):50/win_size:50/2+50/(2*win_size);
    end

    for i = 1:length(file)-win_size
        mag_dft = abs(fftshift(fft( segment(i:i+win_size-1) )));

        
        plot(f_frame,mag_dft)
        hold on;

        stft = [ stft ; mag_dft];
    
    end


end

%4.1
function [] = test_windows_stft(file,times)
    fs = 50; %Hz
    frame_size = 1; %em segundos
    N = length(file);
    tam = fs * frame_size;
    passo = tam;

    %windows 
    hamm = hamming(tam);
    hann = hanning(tam);
    black = blackman(tam);

    %Plot das janelas
    %wvtool(hamm);
    %wvtool(hann);
    %wvtool(black);

    %ATIVIDADE ESCOLHIDA: 1 - WALKING
    
    if ( mod(tam,2) == 0 )
        f_frame=-fs/2:fs/tam:fs/2-fs/tam;
    else
        f_frame=-fs/2+fs(2*tam):fs/tam:fs/2+fs/(2*tam);
    end

    %Calcular DFT com diferentes janelas para o segmento desta atividade,
    %no eixo de X
    
    %hann
    nexttile;
    for i = times(1,1) : passo : times(1,2)-passo
        dft = abs(fftshift(fft( file( i:i+passo-1 ,  1) .* hann )));
        
        hold on;
        plot(f_frame,dft)
    end
    title('|DFT| do sinal com janela Hann'); 
    ylabel('Magnitude = |X|');
    xlabel('f [Hz]');

    %hamming
    nexttile;
    for i = times(1,1) : passo : times(1,2)-passo
        dft = abs(fftshift(fft( file( i:i+passo-1 ,  1) .* hamm )));
        
        hold on;
        plot(f_frame,dft)
    end
    title('|DFT| do sinal com janela Hamming'); 
    ylabel('Magnitude = |X|');
    xlabel('f [Hz]');

    %blackman
    nexttile;
    for i = times(1,1) : passo : times(1,2)-passo
        dft = abs(fftshift(fft( file( i:i+passo-1 ,  1) .* black )));
        
        hold on;
        plot(f_frame,dft)
    end
    title('|DFT| do sinal com janela Blackman'); 
    ylabel('Magnitude = |X|');
    xlabel('f [Hz]');

    %retangular
    nexttile;
    for i = times(1,1) : passo : times(1,2)-passo
        dft = abs(fftshift(fft( file( i:i+passo-1 ,  1) )));
        
        hold on;
        plot(f_frame,dft)
    end
    title('|DFT| do sinal com janela Retangular'); 
    ylabel('Magnitude = |X|');
    xlabel('f [Hz]');


end

%3.3
function[num_steps] = calculate_steps(freqs)
    
    freqs_relevantes = [];
    [a b] = size(freqs);
    
    %Correr todos os intervalos das frequencias relevantes (só estamos a
    %receber 1 eixo aqui)
    for i = 1:a
        get_freq = mean(freqs(i)); %fazer a media do intervalo
        freqs_relevantes = [ freqs_relevantes ; get_freq]; %adicionar na matriz de frequencias relevantes

    end
    
    %Número de passos por minuto é 60 (segundos) a dividir pelo Período,
    %isto é, o tempo de 1 ciclo completo. 60/ (1/freq)
    num_steps = 60/(1/mean(freqs_relevantes));

end

%3.4
function [] = try_identify_class(file, labels, experience, plotit)
    
    %plot do ficheiro no eixo x
    if plotit
        plot([1:length(file)],file(:,1))
        hold on;
        colors = ['r' 'c' 'm'];
    end
    
    act = labels(:, labels(1,:) == experience);
    
    nr_real_estaticas = 0;
    nr_real_dinamicas= 0;
    nr_real_transicao= 0;

    nr_prev_estaticas = 0;
    nr_prev_dinamicas= 0;
    nr_prev_transicao= 0;

    nr_verdadeiros_negativos = 0;

    for i = 1:length(act)
        %loop por todas as atividades do desta experiencia
        correct_activity = act(3,i);
        activity_size = act(5,i) - act(4,i);

        %atualizar o nr real da atividade
        if correct_activity <= 3
            nr_real_dinamicas = nr_real_dinamicas + 1;
        elseif correct_activity <= 6
            nr_real_estaticas= nr_real_estaticas+ 1;
        else
            nr_real_transicao= nr_real_transicao+ 1;
        end

        %prever
        %calculate dft and get frequencies
        [c] = get_class(file,[act(4,i) act(5,i)]);

        if c == "estatica" | c == "laying"
            %estatica
            nr_prev_estaticas = nr_prev_estaticas + 1 ;

            if correct_activity > 3 & correct_activity < 6
                nr_verdadeiros_negativos = nr_verdadeiros_negativos + 2;
            end

            if plotit
                plot([act(4,i):act(5,i)], file( act(4,i):act(5,i) , 1), colors(1) );
            end

        elseif c == "dinamica"
            %dinamica
            nr_prev_dinamicas = nr_prev_dinamicas + 1;

            if correct_activity <= 3
                nr_verdadeiros_negativos = nr_verdadeiros_negativos + 2;
            end

            if plotit
                plot([act(4,i):act(5,i)], file( act(4,i):act(5,i) , 1), colors(2) );
            end

        elseif c == "transicao"
            %transicao
            nr_prev_transicao = nr_prev_transicao + 1;

            if correct_activity > 6
                nr_verdadeiros_negativos = nr_verdadeiros_negativos + 2;
            end 

            if plotit
                plot([act(4,i):act(5,i)], file( act(4,i):act(5,i) , 1), colors(3) );
            end

        end
    end
     
    %averiguar sensibilidade e especificidade
    nr_verdadeiros_positivos = 0;
    nr_falsos_negativos = 0;
    nr_falsos_positivos = 0;

    test = nr_real_dinamicas - nr_prev_dinamicas;
    if test > 0
        nr_falsos_negativos = nr_falsos_negativos + test;
        nr_verdadeiros_positivos = nr_verdadeiros_positivos + nr_prev_dinamicas;

    else
        nr_falsos_positivos = nr_falsos_positivos + abs(test); 
        nr_verdadeiros_positivos = nr_verdadeiros_positivos + nr_real_dinamicas;
    end
    

    test = nr_real_estaticas - nr_prev_estaticas;
    if test > 0
        nr_falsos_negativos = nr_falsos_negativos + test;
        nr_verdadeiros_positivos = nr_verdadeiros_positivos + nr_prev_estaticas;

    else
        nr_falsos_positivos = nr_falsos_positivos + abs(test); 
        nr_verdadeiros_positivos = nr_verdadeiros_positivos + nr_real_estaticas;
    end


    test = nr_real_transicao - nr_prev_transicao;    
    if test > 0
        nr_falsos_negativos = nr_falsos_negativos + test;
        nr_verdadeiros_positivos = nr_verdadeiros_positivos + nr_prev_transicao;

    else
        nr_falsos_positivos = nr_falsos_positivos + abs(test); 
        nr_verdadeiros_positivos = nr_verdadeiros_positivos + nr_real_transicao;
    end

    sensivity =  nr_verdadeiros_positivos / ( nr_verdadeiros_positivos + nr_falsos_negativos);

    specificity = nr_verdadeiros_negativos / (nr_verdadeiros_negativos + nr_falsos_positivos);

end

%3.5
function[class,med_x,med_y,med_z] = get_class(file, times)

    activity_size = times(2) - times(1);


    %prever
    %calculate dft and get frequencies
    intervalo = [times(1) times(2)];
    [x,y,z] = DFT_activity(file,intervalo,0,0,0,0);
    
    med_x = mean(x);
    med_y = mean(y);
    med_z = mean(z);

    if med_x > 1.4
        %dinamica ou estatica
        
        if med_x > 2
            %Estatica - Standing ou Sit
            class = "estatica"; 

        else
            %alguma dinamica
            class = "dinamica";
        end
 

    elseif med_y > 1.3
        %Laying - Estatica
        class = "laying";

    else
        % frequencia x pequena, frequencia em y pequena
        % pode ser estatica ou de transicao
        % vamos comparar através do tamanho da atividade

        if activity_size < 550
            %transicao, atividade rápida
            class = "transicao";

        else
            %estatica - sit
            class = "estatica";
        end

    end
    


end

%3.5
function[nr_real_activities,nr_prev_activities] = try_identify(file,labels,experience)
    

    act = labels(:, labels(1,:) == experience);
    nr_real_activities = [0 0 0 0 0 0 0 0 0 0 0 0];
    nr_prev_activities = [0 0 0 0 0 0 0 0 0 0 0 0];

    for i = 1:length(act)
        %loop por todas as atividades do desta experiencia
        correct_activity = act(3,i);
        activity_size = act(5,i) - act(4,i);
        intervalo = [act(4,i) act(5,i)];

        %atualizar o nr real da atividade
        nr_real_activities(correct_activity) = nr_real_activities(correct_activity) + 1; 

        %prever
        %calculate dft and get frequencies
        %PREVER ATIVIDADE
        [prever_classe,med_x,med_y,med_z] = get_class(file,intervalo);


        %README - ISTO NÃO ESTÁ COMPLETO E NÃO ESTÁ A FUNCIONAR MUITO BEM
        if prever_classe == "laying"
            nr_prev_activities(6) = nr_prev_activities(6) + 1; 
        
        elseif prever_classe == "dinamica"
           %VERIFICAR QUAL DAS DINAMICAS É
           %nr_prev_activities(2) = nr_prev_activities(2) + 1;
            disp(med_y)
            dif_walk = abs(1.74-med_y);
            dif_walkUp = abs(1.49-med_y);
            dif_walkDown = abs(1.64-med_y);
            
            if med_y > 1.82
                %Walking down
                nr_prev_activities(3) = nr_prev_activities(3) + 1;
            
            elseif  dif_walkUp < dif_walk & dif_walkUp < dif_walkDown
                %Walking Up
                nr_prev_activities(2) = nr_prev_activities(2) + 1; 
            
            elseif dif_walk < dif_walkDown & dif_walk < dif_walkUp
                %Walking
                nr_prev_activities(1) = nr_prev_activities(1) + 1; 

            else
                %Walk Down
                nr_prev_activities(3) = nr_prev_activities(3) + 1;
    
            end


        elseif prever_classe == "estatica"
            %nas estaticas só sobra sitting e standing
            %amplitude baixa

            %nr_prev_activities(5) = nr_prev_activities(5) + 1;
            dif_sit = abs(4.2551 - med_x);
            dif_stand = abs(3.9268 - med_x);

            if med_x < 2.30
                %tem de ser sitting, no standing nunca temos frequencias
                %abaixo de 2.38
                nr_prev_activities(4) = nr_prev_activities(4) + 1;

            elseif med_x > 5.5
                %tem de ser sitting, no standing nunca temos frequencias
                %acima de 5.39
                nr_prev_activities(4) = nr_prev_activities(4) + 1;
            
            elseif dif_sit < dif_stand
                %se está no intervalo comum às duas atividades, vamos pelo
                %que está mais perto da média
                %neste caso, mais perto da media do sitting

                nr_prev_activities(4) = nr_prev_activities(4) + 1;

            else
                %standing
                nr_prev_activities(5) = nr_prev_activities(5) + 1;

            end

        elseif prever_classe == "transicao"
                %TODO VERIFICAR QUAL DAS TRANSICAO É
                nr_prev_activities(7) = nr_prev_activities(7) + 1;
        end

        
    end




end

%3.2
function[xf,yf,zf,med_x,med_y,med_z] = get_freqs_filtered(x,y,z)
        
    xf = [];
    yf = [];
    zf = [];
    step = 2;

    med_x = mean(x);
    med_y = mean(y);
    med_z = mean(z);

    %X
    for k = 0:step:max(x)
        
        intervalo = x( x>=k &x <k+step );

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
        
        intervalo = y( y>=k & y <k+step );

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
        
        intervalo = z( z>=k & z <k+step );

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
    Cm_x = [];
    Cm_y = [];
    Cm_z = [];
    
    [a b] = size(times);
    
    %if activity only appears once in the file
    if a == 1
        flag_line = 1;
    else
        flag_line = 0;
    end


    for i = 1:a
        
        
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
        m_x = abs(dft_x);
        m_y = abs(dft_y);
        m_z = abs(dft_z);
        
        %clean
        m_x( m_x<0.001)=0;
        m_y( m_y<0.001)=0;
        m_z( m_z<0.001 )=0;
        
        m_x( abs(fq) <0.15) = 0;
        m_y( abs(fq) <0.15) = 0;
        m_z( abs(fq) <0.15) = 0;
        
        %Later use on activities identification
        Cm_x = [Cm_x (m_x/N)'];
        Cm_y = [Cm_y (m_y/N)'];
        Cm_z = [Cm_z (m_z/N)'];


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
   
    colors = [ [0.9 0.1 0.1] ; [0.8500 0.3250 0.0980] ; [0.9290 0.6940 0.1250] ;[0.4940 0.1840 0.5560] ;[0.4660 0.6740 0.1880] ;[0.3010 0.7450 0.9330] ;[0.6350 0.0780 0.1840]; [0.1 0.9 0.9] ;[0.35 0.15 0.8]; [0.50 0.324 0.124] ;[0 0.3 0.7] ;[0.9 0 0.5] ];
    i = 1;
    j = i;
    x_vals = [];
    activity = {};
    
    %Get Labels
    while(labels(1,i) ~= experiencia)
        i = i+1;
    end
    j = i;

    %X
    nexttile
    plot([1:length(file_data)],file_data(:,1))
    hold on
    title("X")
    min_y = min(file_data(:,1));
    max_y = max(file_data(:,1));

    while (labels(1,j) == experiencia)

        if mod(j,2) == 0
            l = text( labels(4,j) , min_y , activityLabels{2}{labels(3,j)} );
        else
            l = text( labels(4,j) , max_y, activityLabels{2}{labels(3,j)} );
        end
        set(l,'Rotation',50);

        hold on

        plot( [labels(4,j):labels(5,j)]  , file_data( labels(4,j):labels(5,j) , 1) , 'Color',  colors( labels(3,j),: ) )
        
        j = j+1;
    end
    j = i;

    
    %Y
    nexttile
    plot([1:length(file_data)],file_data(:,2))
    title("Y")
    min_y = min(file_data(:,2));
    max_y = max(file_data(:,2));

    while (labels(1,j) == experiencia)

        if mod(j,2) == 0
            l = text( labels(4,j) , min_y , activityLabels{2}{labels(3,j)} );
        else
            l = text( labels(4,j) , max_y, activityLabels{2}{labels(3,j)} );
        end
        set(l,'Rotation',50);

        hold on

        plot( [labels(4,j):labels(5,j)]  , file_data( labels(4,j):labels(5,j) , 2) , 'Color',  colors( labels(3,j),: ) )
        
        j = j+1;
    end
    j = i;

    
    %Z
    nexttile
    plot([1:length(file_data)],file_data(:,3))
    title("Z")

    min_y = min(file_data(:,3));
    max_y = max(file_data(:,3));

    while (labels(1,j) == experiencia)

        if mod(j,2) == 0
            l = text( labels(4,j) , min_y , activityLabels{2}{labels(3,j)} );
        else
            l = text( labels(4,j) , max_y, activityLabels{2}{labels(3,j)} );
        end
        set(l,'Rotation',50);

        hold on

        plot( [labels(4,j):labels(5,j)]  , file_data( labels(4,j):labels(5,j) , 3) , 'Color',  colors( labels(3,j),: ) )
        
        j = j+1;
    end
    j = i;

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
