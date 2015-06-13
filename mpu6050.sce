x = open_serial(1,8,115200)
      
     a=cmd_mpu6050_accel(1,aa.x)
cmd_dcmotor_setup(1,3,1,3,5) 
 // Setup DC motor of type 3 (L293), motor 1, pin 9 and 10
if a>=0 & a<=255 then
cmd_dcmotor_run(1,1,255)
sleep(1000)
cmd_dcmotor_run(1,1,-255)
sleep(1000)
elseif a>255 & a<-255
    cmd_dcmotor_run(1,1,255)
sleep(1000)
cmd_dcmotor_run(1,1,-255)
sleep(1000)
cmd_dcmotor_release(1,1)
end
close_serial(1)
 
 
