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

  def appointments
    Appointment.all.each do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.collect { |apt| apt.doctor }
  end

end
