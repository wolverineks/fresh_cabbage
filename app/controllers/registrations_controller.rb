class RegistrationsController < Devise::RegistrationsController

	# def create
	#   @user = User.new(params[:user])
	 
	#   respond_to do |format|
	#       if @user.save
	#         # Tell the UserMailer to send a welcome email after save
	#         #UserMailer.welcome_email(@user).deliver_later
	#          UserMailer.welcome_email(@user).deliver_now
	 
	#         format.html { redirect_to(@user, notice: 'User was successfully created.') }
	#         format.json { render json: @user, status: :created, location: @user }
	#       else
	#         format.html { render action: 'new' }
	#         format.json { render json: @user.errors, status: :unprocessable_entity }
	#       end
	#   end
	# end

  private

  def sign_up_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :current_password)
  end
end
