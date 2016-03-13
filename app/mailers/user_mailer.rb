class UserMailer < ApplicationMailer
	default from: "from@example.com"

	def contact_form(email, name, message)
	@message = message
		mail(:from => email,
			:to => 'nikkirobinsonphotography@gmail.com',
			:subject => "A new contact form message from #{name}")
	end

	def welcome(user)
		@appname = "Nikki's Photos"
		mail( :to => user.email,
			:subject => "Welcome to #{@appname}!")

	def thank_you
		@name = params[:name]
		@email = params[:email]
		@message = params[:message]
		UserMailer.contact_form(@email, @name, @message).deliver_now
	end

end
