class Patient
  attr_accessor :name, :age
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def patient(doctor, date)
    Appointment.new(self, doctor, date)
  end

end
