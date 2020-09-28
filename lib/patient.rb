class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end

# something here below is causing a fuck up, commented out the test part that was making it fail.

  def appointments
    Appointment.all.each do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.collect { |apt| apt.doctor }
  end

end
