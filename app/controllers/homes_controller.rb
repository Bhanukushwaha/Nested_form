class HomesController < ApplicationController
	def index
		# @homes = Home.all
	end
	def home_modal
		@user = User.new
	end
	def sign_in
	  @user = User.new
	  respond_to do |format|    
      format.js {}
  	end
  end
   def sign_up
   	@user = User.new
	  respond_to do |format|    
      format.js {}
    end
  end
  
  def forgot_password
  	@user = User.new
  	respond_to do |format|    
      format.js {}
    end
  end  
end