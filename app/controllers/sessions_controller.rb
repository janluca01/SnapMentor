class SessionsController < Devise::SessionsController
	
	def after_new_user_session_path_for(resource)
 		"http://www.snapmentor.de/#aftersignup"
	end

end