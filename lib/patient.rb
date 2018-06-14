class Patient
  attr_accessor :name, :age
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def patient(doctor, date)
    appt = Appointment.new(self, doctor, date)
    Appointment.all << appt
  end

end
