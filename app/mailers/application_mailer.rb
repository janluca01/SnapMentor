class ApplicationMailer < ActionMailer::Base
  default from: "janluca@gmail.com"

	def sample_email(user)
		@admin = admin	
		mail(to: @admin.email, subject: "Sample Email")
	end
end
