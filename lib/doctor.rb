class Doctor

	attr_accessor :name

	def initialize(name)
		@name = name
		@appointments = []
	end

	def add_appointment (apoint)
		@appointments << apoint
		apoint.doctor = self
	end

	def appointments
		@appointments
	end

	def patients
		@appointments.collect do |date|
			date.patient
			end
	end




end