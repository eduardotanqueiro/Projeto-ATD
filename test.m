formatSpec = '%f %f %f';
%vai buscar a path da pasta
files = dir(pwd);
n_experiencia={};
n_utilizador=[];

data_exp={};

contador=1;
contador_utilizador=1;

for i = 1:numel(files)
    if contains(files(i).name, 'acc')
        file=fopen(files(i).name,'r');
        data=fscanf(file,formatSpec,[3 Inf])';
        n_utilizador = [n_utilizador contador_utilizador];
        n_experiencia = [n_experiencia contador];
        data_exp=[data_exp data];
        if mod(contador,2)==0
            contador_utilizador=contador_utilizador+1;
        end 
        contador=contador+1;
    end
end


experiencias=containers.Map(n_experiencia,data_exp);

% para aceder aos dados da experiencia
%experiencias(1) numero da experiencia

%Import Activity Labels
fileLabels = fopen('labels.txt','r');
fileActivityLabels = fopen('activity_labels.txt','r');

labels = fscanf(fileLabels,'%d %d %d %d %d',[5 Inf]);
activityLabels = textscan(fileActivityLabels,'%d%s');

activity_frame={};
for h=1:12
    frames_activity={};
    frames={};
    for i=1:8
        fr=get_activity_file(i,n_utilizador(i),h,labels);
        frames=[frames fr];
    end

    frames_activity=containers.Map([1:8],frames);
    activity_frame=[activity_frame;containers.Map(h,frames_activity)];
end

%dados atividade 2 experiencia 3
%celldisp(activity_frame(2).values({3}))


%%print all graphics

for i=1:experiencias.Count
    figure('Name',sprintf("EXPERIENCIA %d ",i))
    print_with_labels(experiencias(i),labels,activityLabels,i);
end


freq_filtered={};

for i=1:activity_frame.Count

    x=[];
    y=[];
    z=[];
    for j=1:experiencias.Count
    [auxx,auxy,auxz] = DFT_activity(experiencias(j),cell2mat(activity_frame(i).values({j})),activityLabels,i,0,0);
    x=[x auxx];
    y=[y auxy];
    z=[z auxz];
    end
    [xf,yf,zf,med_x,med_y,med_z] = get_freqs_filtered(x,y,z);   

    freq=containers.Map({'xf' 'yf' 'zf' 'med_x' 'med_y' 'med_z'},{xf yf zf med_x med_y med_z});

    freq_filtered=[freq_filtered;containers.Map(i,freq)];

end

%aceder ao xf da atividade 1
%freq_filtered(1).values('xf');


























%%functions
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