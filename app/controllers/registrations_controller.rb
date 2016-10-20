class RegistrationsController < Devise::RegistrationsController
	
	def after_sign_up_path_for(resource)
 		"https://www.snapmentor.de/#aftersignup"
	end

end