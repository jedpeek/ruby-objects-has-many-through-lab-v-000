class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
  end

end
