module RegistrationsHelper
	def full_name
		current_user.first_name + " " + current_user.last_name
	end
end
