%%%%% links dimensions
a1 = 18; a2 = 18; 
        %%%%%number of intermediate steps
n = 100; 
k= 21;
        %%%%%%array for all x,y coords
px_array = zeros(k*n,1);
py_array = zeros(k*n,1);

tracex_array = zeros(k*n,1);
tracey_array = zeros(k*n,1);

%array for all theta1 , theta2 values
theta1_array = zeros(k*n,1);
theta2_array = zeros(k*n,1);

theta1_array_deg = zeros (k*n,1);
theta2_array_deg = zeros (k*n,1); 
%%%% array for sim time 
t_array = zeros(k*n,1); 
sim_time_array = linspace (0,k,k*n); 

%%%%% for circles 
theta = linspace (0,(2*pi),n);
for s = 1:k
   if s == 1 
p1 = [0;6]; %first point
p2 = [0;18];   %second point 
   end
if s==2
p1 = [0;18]; %first point
p2 = [4;18];   %second point 
end
if s == 3
p1 = [4;18]; %first point
p2 = [4;6];   %second point
end
   if s == 4
p1 = [4;6]; %first point
p2 = [4;12];   %second point 
   end
if s==5
p1 = [4;12]; %first point
p2 = [2;12];   %second point 
end
if s == 6
p1 = [2;12]; %first point
p2 = [6;12];   %second point
end

if s == 7
p1 = [6;12]; %first point
p2 = [7;11];   %second point
end

if s==8
xc = 7; 
yc = 9; 
r  = 2;
end

if s == 9
p1 = [7;11]; %first point
p2 = [10;9];   %second point
end

if s == 10
xc = 12; %first point
yc = 9; 
r  = 2;
end
if s == 11
p1 = [10;9]; %first point
p2 = [15;5];   %second point
end
if s == 12
xc = 15;
yc = 9; 
r  = 4;
end
if s == 13
p1 = [15;13]; %first point
p2 = [15;18];   %second point
end
if s == 14
p1 = [15;18]; %first point
p2 = [19;18];   %second point
end
if s == 15
p1 = [19;18]; %first point
p2 = [25;18];   %second point
end
if s == 16
p1 = [25;18]; %first point
p2 = [20;18];   %second point
end
if s == 17
p1 = [20;18]; %first point
p2 = [20;13];   %second point
end
if s == 18
xc = 20; %first point
yc = 9; 
r  = 4;
end
%%%%%%%%%88888
if s == 19
p1 = [20;5]; %first point
p2 = [28.5;12.25];   %second point
end

if s == 20
xc = 28.5; %first point
yc = 9.25; 
r  = 3;
end
if s == 21
xc = 28.5; %first point
yc = 15.25; 
r  = 3;
end

for i = 1:k*n 
t_array (i) = sim_time_array(i);
end

%%%%%% trajectory Generation

delta_p = p2 - p1 ; 
if s==1 
    for i = 1:n
         t = t_array (i);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
    end

end

if s==2
    j = 1;
        for i = n+1:2*n
         t = t_array (j);
         p = p1 + t*delta_p ;
 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j = j+1;
        end
    
end
 
   if s==3
       j=1;
    for i = (2*n+1):3*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
    end
   end
   
  if s==4
      j=1;
      for i = (3*n+1):4*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
  end
  
   if s==5
       j=1;
      for i = (4*n+1):5*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
      end
   end
  
   if s==6
       j=1;
      for i = (5*n+1):6*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
   end
   
if s==7
       j=1;
      for i = (6*n+1):7*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end
   
if s==8
    theta_u_d = linspace ((pi)/2,(-3*pi)/2,n);
    j = 1;
        for i = (7*n+1):8*n
 px_array(i)= xc + r* cos (theta_u_d(j));  
 py_array(i)= yc + r* sin (theta_u_d(j));
 j=j+1;
        end 
end

if s==9
       j=1;
      for i = (8*n+1):9*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end
if s==10
    theta10= linspace ((pi),(-1*pi),n);
    j = 1;
        for i = (9*n+1):10*n
 px_array(i)= xc + r* cos (theta10(j));  
 py_array(i)= yc + r* sin (theta10(j));
 j=j+1;
        end
end

if s==11
       j=1;
      for i = (10*n+1):11*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end

if s==12
     theta_semi = linspace ((-1*pi)/2,(pi)/2,n);
    j = 1;
        for i = (11*n+1):12*n
 px_array(i)= xc + r* cos (theta_semi(j));  
 py_array(i)= yc + r* sin (theta_semi(j));
 j=j+1;
        end
end

if s==13
       j=1;
      for i = (12*n+1):13*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end

if s==14
       j=1;
      for i = (13*n+1):14*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end



if s==15
       j=1;
      for i = (14*n+1):15*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end

if s==16
       j=1;
      for i = (15*n+1):16*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end

if s==17
       j=1;
      for i = (16*n+1):17*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end

if s==18
    theta_semi = linspace ((pi)/2,(-1*pi)/2,n);
    j = 1;
        for i = (17*n+1):18*n
 px_array(i)= xc + r* cos (theta_semi(j));  
 py_array(i)= yc + r* sin (theta_semi(j));
 j=j+1;
        end
end

if s==19
       j=1;
      for i = (18*n+1):19*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end

if s==20
    theta_u_d = linspace ((pi)/2,(-3*pi)/2,n);
    j = 1;
        for i = (19*n+1):20*n
 px_array(i)= xc + r* cos (theta_u_d(j));  
 py_array(i)= yc + r* sin (theta_u_d(j));
 j=j+1;
        end
end



if s==21
     theta_reverse = linspace ((-1*pi)/2,(3*pi)/2,n);
    j = 1;
        for i = (20*n+1):21*n
 px_array(i)= xc + r* cos (theta_reverse(j));  
 py_array(i)= yc + r* sin (theta_reverse(j));
 j=j+1;
        end
end

end



        %%%%%%%Calling the inverse kina func to get the two solns of the first pos.
[theta1_1,theta2_1,theta1_2,theta2_2] = IKnFunction(px_array(1),py_array(1),a1,a2);

        %%%%%%%% choosing the first solution for the first pos. 
 theta1_previous = theta1_1 ; theta2_previous = theta2_1 ;  
 
        %%% calling the inverse Kin fn for every point btw p1&p2
for i = 1:k*n 
  
    px = px_array (i); py = py_array(i);
    
    [theta1_1,theta2_1,theta1_2,theta2_2] = IKnFunction(px,py,a1,a2);
    if (((theta1_1 - theta1_previous)^2) - ((theta2_1 - theta2_previous)^2)) < (((theta1_2 - theta1_previous)^2) - ((theta2_2 - theta2_previous)^2))
        theta1 = theta1_1 ; theta2= theta2_1 ;
    else 
        theta1 = theta1_2 ; theta2= theta2_2 ;  
    end
 
    %%%%% saving the value of each theta in the theta array 
        theta1_array(i) = theta1 ; theta2_array(i) = theta2 ;

end 

%%%%%%%%%%%%% Animation 
xAxisArrayXCoords = [0 25];
xAxisArrayYCoords = [0 0];

yAxisArrayXCoords = [0 0];
yAxisArrayYCoords = [0 25]; 

for i = 1:k*n 
    ax= a1*cos(theta1_array(i)); 
    ay= a1*sin(theta1_array(i));

    bx= ax + a2*cos(theta1_array(i)+theta2_array(i));
    by= ay + a2*sin(theta1_array(i)+theta2_array(i));
     tracex_array (i) = bx ; tracey_array (i) = by ; 
     
     link1xcoords = [0 ax];
     link1ycoords = [0 ay];
     link2xcoords = [ax bx]; 
     link2ycoords = [ay by];
     
    plot (xAxisArrayXCoords,xAxisArrayYCoords, 'r',yAxisArrayXCoords, yAxisArrayYCoords,'g');
    hold on ; 
    plot (link1xcoords,link1ycoords, 'b',link2xcoords,link2ycoords, 'c');
    hold on ; 
    plot (tracex_array,tracey_array,'k');
    hold off ; 
    pause (0.05);
end 

for i= 1:k*n
    theta1_array_deg(i) = (theta1_array (i) * 180)/ pi ;
    theta2_array_deg(i) = (theta2_array (i) * 180)/ pi ;
end 
