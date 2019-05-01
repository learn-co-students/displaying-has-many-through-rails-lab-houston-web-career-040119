class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
  end

  def doctor_name=(name)
    self.doctor.name.find_or_create_by(name: name)
  end

  def doctor_name
    self.doctor.name
  end

end
