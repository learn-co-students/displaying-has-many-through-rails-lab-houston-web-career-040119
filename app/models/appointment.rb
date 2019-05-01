class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient
  
    def human_readable_time
  
      year = self.appointment_datetime&.to_datetime.year
      month = self.appointment_datetime&.to_datetime.month
      day = self.appointment_datetime&.to_datetime.day
      hour = self.appointment_datetime&.to_datetime.hour
      minute = self.appointment_datetime&.to_datetime.minute
      second = self.appointment_datetime&.to_datetime.second
      months = [nil,"January","February","March","April","May","June","July","August","September","October","November","December"]
  
      minute_s = minute.to_s
      if minute_s == 1
        minute_s = "0" + minute_s
      end
  
      months[month.to_i] + " " + day.to_s + ", " + year.to_s + " at " + hour.to_s + ":" + minute_s
    end
  end