view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 2000ps sim:/cpu/CLOCK_50 
wave create -driver freeze -pattern constant -value 110000000000011101 -range 17 0 -starttime 0ps -endtime 200ps sim:/cpu/SW 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 110000000000010110 -range 17 0 -starttime 200ps -endtime 400ps Edit:/cpu/SW 
wave create -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/cpu/Enable 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 2000ps Edit:/cpu/CLOCK_50 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 2000ps Edit:/cpu/CLOCK_50 
wave modify -driver freeze -pattern constant -value 110000000000010110 -range 17 0 -starttime 200ps -endtime 2000ps Edit:/cpu/SW 
wave create -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 100ps sim:/cpu/Reset 
wave modify -driver expectedOutput -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 100ps -endtime 2000ps Edit:/cpu/Reset 
wave modify -driver expectedOutput -pattern constant -value 1 -starttime 100ps -endtime 2000ps Edit:/cpu/Reset 
wave modify -driver expectedOutput -pattern constant -value 0 -starttime 0ps -endtime 200ps Edit:/cpu/Reset 
wave modify -driver freeze -pattern constant -value 110000000000010011 -range 17 0 -starttime 800ps -endtime 2000ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 110000000000010010 -range 17 0 -starttime 800ps -endtime 2000ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 110000000000010001 -range 17 0 -starttime 800ps -endtime 2000ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 110000000000010011 -range 17 0 -starttime 800ps -endtime 1500ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 110000000000010101 -range 17 0 -starttime 0ps -endtime 300ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 110000000000011101 -range 17 0 -starttime 0ps -endtime 300ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 010000000000011101 -range 17 0 -starttime 0ps -endtime 100ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 010000000000011101 -range 17 0 -starttime 100ps -endtime 300ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 110000000000011101 -range 17 0 -starttime 0ps -endtime 100ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 010000000000011101 -range 17 0 -starttime 400ps -endtime 800ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 010000000000011101 -range 17 0 -starttime 900ps -endtime 1500ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 110000000001100101 -range 17 0 -starttime 300ps -endtime 400ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 110000000001100110 -range 17 0 -starttime 300ps -endtime 400ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 010000000001100110 -range 17 0 -starttime 400ps -endtime 800ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 110000000001100011 -range 17 0 -starttime 1500ps -endtime 1600ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 010000000001100011 -range 17 0 -starttime 1600ps -endtime 2000ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 010000000001100010 -range 17 0 -starttime 1600ps -endtime 2000ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 010000000001100010 -range 17 0 -starttime 1500ps -endtime 1600ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 110000000001100010 -range 17 0 -starttime 1600ps -endtime 2000ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 010000000001100010 -range 17 0 -starttime 1600ps -endtime 2000ps Edit:/cpu/SW 
wave modify -driver freeze -pattern constant -value 110000000001100010 -range 17 0 -starttime 1500ps -endtime 1600ps Edit:/cpu/SW 
WaveCollapseAll -1
wave clipboard restore
