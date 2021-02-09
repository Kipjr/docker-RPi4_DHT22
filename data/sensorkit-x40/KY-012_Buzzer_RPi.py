import RPi.GPIO as GPIO
import time
   
GPIO.setmode(GPIO.BCM)
   
# Output pin declaration for the Buzzer.
Buzzer_PIN = 24
GPIO.setup(Buzzer_PIN, GPIO.OUT, initial= GPIO.LOW)
   
print ("Buzzer-test [press ctrl+c to end the test]")
  
# Main program loop
try:
        while True:
            print("Buzzer will be on for 4 seconds")
            GPIO.output(Buzzer_PIN,GPIO.HIGH) #Buzzer will be switched on
            time.sleep(4) #Waitmode for 4 seconds
            print("Buzzer wil be off for 4 seconds") 
            GPIO.output(Buzzer_PIN,GPIO.LOW) #Buzzer will be switched off 
            time.sleep(2) #Waitmode for another 2 seconds in which the buzzer will be off
   
# Scavenging work after the end of the program
except KeyboardInterrupt:
        GPIO.cleanup()