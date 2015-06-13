function []= cmd_mpu6050_accel(h,u1)
    disp('init MPU6050')
   
   
   disp('initialisation done')
   
   
   values=read_serial(1,2);
if (values == 'OK') then
        disp('Init mpu6050 activation')
    else 
        disp('not activated')
        end
        
        u1=read_serial(1,9);
        aa.x=linspace(1,1700,255)
        if (u1 == aa.x) then
               {
             accel_sent="G"+string(u1)+"1";
             write_serial(h,accel_sent,2)
            }
       
      
       if (u1 ==  ypr) thens
               {
             accel_sent="G"+string(u1)+"1";
             write_serial(h,accel_sent,3*4)
            }
        //aa.x=linspace(1,1700,255)
        if (u1 == aa.x) then
               {
             accel_sent="G"+string(u1)+"1";
             write_serial(h,accel_sent,2)
            }
        elseif (u1 == aa.y) then
               {
             accel_sent="G"+string(u1)+"1";
             write_serial(h,accel_sent,2)
            }
            elseif (u1 == aa.z) then
               {
             accel_sent="G"+string(u1)+"1";
             write_serial(h,accel_sent,2)
            }
            elseif (u1 == w.x) then
               {
             accel_sent="G"+string(u1)+"1";
             write_serial(h,accel_sent,2)
            }
            elseif (u1 == wy) then
               {
             accel_sent="G"+string(u1)+"1";
             write_serial(h,accel_sent,2)
            }
            elseif (u1 == wz) then
              {
             accel_sent="G"+string(u1)+"1";
             write_serial(h,accel_sent,2)
            }
        else 
            disp('error')
        end
        
        
        
   //Attente que l'arduino reponde false
    [a,b,c]=status_serial(1);
    while (b < 2) 
        [a,b,c]=status_serial(1);
    end
     values=read_serial(1,5);
    if (values == 'false') then
        disp('stop acquisition')
    else
        disp('error')
    end
    endfunction
