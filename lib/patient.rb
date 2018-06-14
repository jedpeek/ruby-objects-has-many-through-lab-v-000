class Patient
  attr_accessor :name, :age, :doctor
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    appointments.map{|appt| appt.doctors}
  end

end
