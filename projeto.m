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


%%
%Import Activity Labels
fileLabels = fopen('labels.txt','r');
fileActivityLabels = fopen('activity_labels.txt','r');

labels = fscanf(fileLabels,'%d %d %d %d %d',[5 Inf]);
activityLabels = textscan(fileActivityLabels,'%d%s');

%%
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
print_with_labels(dataExp1user1,labels,activityLabels,1);

%%
%3

fs = 50; %Hz, sampling frequency
Ts = 1/fs;


DFT_activity(dataExp4user2,walk_Exp4_Us2,activityLabels,1,1,0);
    

function[x,y,z] = DFT_activity(file,times,activityLabels,activity,plot_magnitude,plot_freqs)
    
    fs = 50;
    x = [];
    y = [];
    z = [];

    for i = 1:length(times)
        
        dft_x = fftshift( fft( file(times(i,1):times(i,2) ,1) ) ) ;
        dft_y = fftshift( fft( file(times(i,1):times(i,2) ,2) ) ) ;
        dft_z = fftshift( fft( file(times(i,1):times(i,2) ,3) ) ) ;

        %clean
        dft_x(abs(dft_x)<0.001)=0;
        dft_y(abs(dft_y)<0.001)=0;
        dft_z(abs(dft_z)<0.001)=0;
        
        zr = find(dft_x == 0);
        dft_x(zr) = 0;

        zr = find(dft_y == 0);
        dft_y(zr) = 0;

        zr = find(dft_z == 0);
        dft_z(zr) = 0;

        %get positive values
        m_x = abs(dft_x);
        m_y = abs(dft_y);
        m_z = abs(dft_z);

        threshold_x = 0.8*max(m_x);
        threshold_y = 0.8*max(m_y);
        threshold_z = 0.8*max(m_z);

        N = length(dft_x);
        fq = [-fs/2:fs/N:fs/2-fs/N];

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
        f_relevant_x = fq(locs)
        disp(find(m_x>threshold_x))
        %x = [x,f_relevant_x(find(f_relevant_x>0))];
        
        %Y
        [pks,locs] = findpeaks(m_y,'MinPeakHeight',threshold_y);
        f_relevant_y = fq(locs);
        disp(find(m_y>threshold_y))
        %y = [y,f_relevant_y(find(f_relevant_y>0))]; 

        %Z
        [pks,locs] = findpeaks(m_z,'MinPeakHeight',threshold_z);
        f_relevant_z = fq(locs)
        disp(find(m_z>threshold_z))
        %z = [z,f_relevant_z(find(f_relevant_z>0))];
        
        if plot_freqs == 1
            
            figure(5);
            m_x_zeros = m_x;
            m_x_zeros( m_x_zeros < threshold_x) = 0;

            m_y_zeros = m_y;
            m_y_zeros( m_y_zeros < threshold_y) = 0;

            m_z_zeros = m_z;
            m_z_zeros( m_z_zeros < threshold_z) = 0;

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
    
    nexttile
    plot([1:length(file_data)],file_data(:,1))
    title("X")
    
    i = 1;
    x_vals = [];
    activity = {};
    
    %Get Labels
    while(labels(1,i) ~= experiencia)
        i = i+1;
    end

    while (labels(1,i) == experiencia)
        x_vals = [ x_vals, labels(4,i)];
        activity{i} = activityLabels{2}{labels(3,i)};
        i = i+1;
    end
   
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
