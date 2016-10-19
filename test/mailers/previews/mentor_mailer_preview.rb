# Preview all emails at http://localhost:3000/rails/mailers/mentor_mailer
class MentorMailerPreview < ActionMailer::Preview
	def sample_mail_preview
    	MentorMailer.sample_email(Admin.first)
  	end
end
