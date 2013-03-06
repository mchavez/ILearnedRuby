class HomeController < ApplicationController
	def index
  		if user_signed_in?
    		redirect_to :controller=>'teachers', :action => 'index'
  		end
	end
end
