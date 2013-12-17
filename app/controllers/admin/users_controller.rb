class Admin::UsersController < ApplicationController
	def index
		render text: "hello world, name spaced my admin users"
	end
end