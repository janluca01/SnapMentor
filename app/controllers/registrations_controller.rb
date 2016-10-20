class RegistrationsController < Devise::RegistrationsController
	
	def after_sign_up_path_for(resource)
 		"http://www.snapmentor.de/#aftersignup"
	end

end