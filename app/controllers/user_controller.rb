class UserController < ApplicationController
	def index
		UserMailer.example(User.new(email: 'sushmitha.hm3@gmail.com')).deliver
		@users = User.all
	end
end
