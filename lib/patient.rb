class Patient
  attr_accessor :name, :age
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appt = Appointment.new(self, doctor, date)
    Appointment.all << appt
  end

  def doctors
  end

end
