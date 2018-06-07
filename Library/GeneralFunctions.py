
import time

#Timer
#Usage Start the timer 
#    var_name = Timer()
#Read the timer
#    var_name = Timer.duration()
class Timer:
    def __init__(self):
        self.start_time = time.time()

    def duration(self):
        return time.time() - self.start_time

#End Timer Function

