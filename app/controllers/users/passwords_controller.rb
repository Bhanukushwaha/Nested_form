class Users::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
  # def new
  #   super
  # end
  # POST /resource/password
  def create
    user= User.find_by_email(params[:user][:email])
    if user.present?
      UserMailer.with(user: user).welcome_email.deliver_later
      @error = "User forword successfully?"
      # @error = "user have a allready present?"
    else
      @error = "User Not Found?"
      respond_to do |format|
        format.js
      end
    end
  end  
end
