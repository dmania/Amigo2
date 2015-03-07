class TwilioController < ApplicationController

skip_before_filter :verify_authenticity_token

#disables CSRF protections

	# def sms
	# 	incoming_user = User.find_by(params[:From])  #.find is only for finding by id
	# 	message_body = params[:Body]  #created a params called Body with a message set to hello

	# 		if message_body.downcase.strip == "subscribe"
	# 			new_user = User.new(number: params[:From])
	# 			if new_user.save
	# 				response = Twilio::TwiML::Response.new do |r|
	# 				r.Sms 'Welcome to Messenger. You have been subscribed.'
	# 				end
	# 			else
	# 				response = Twilio::TwiML::Response.new do |r|
	# 				r.Sms 'You are already subscribed.'
	# 				end
	# 			end
	# 			render xml: response.text
	# 		elsif incoming_user 
	# 			account_sid =ENV['TWILIO_ID']
	# 			auth_token = ENV['TWILIO_SECRET']
	# 			@client = Twilio::REST::Client.new account_sid, auth_token
				 

	# 			User.all.each do |user|

	# 				message = @client.account.messages.create(
	# 					:body => message_body,
	# 				    :to => user.number, #up above, we've called each user "user" and we're sending them a message
	# 				    :from => "+12012318581")
	# 				    # :media_url => "http://cdn.sheknows.com/articles/2013/04/Puppy_2.jpg")
	# 				puts message.to
	# 			end
	# 			render status: :ok
	# 		else
	# 			response = Twilio::TwiML::Response.new do |r|
	# 			r.Sms 'Please \'subscribe\' to send messages.'
	# 			end
	# 			render xml: response.text		
	# 		end
	# 	end
		

	def test
		# message_body = params[:Body]  #created a params called Body with a message set to hello
		account_sid = ENV['TWILIO_ID']
		auth_token = ENV['TWILIO_SECRET']
		@client = Twilio::REST::Client.new account_sid, auth_token
		 

		User.all.each do |user|

			message = @client.account.messages.create(:body => "Test!",
				:body => message_body,
			    :to => "+13474337462", #up above, we've called each user "user" and we're sending them a message
			    :from => "+12012318581")
			    # :media_url => "http://cdn.sheknows.com/articles/2013/04/Puppy_2.jpg")
			puts message.to
		end

		render plain: "All good"
	end

end




end
