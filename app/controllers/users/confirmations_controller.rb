class Users::ConfirmationsController < Devise::ConfirmationsController
  def create
    @user = User.find_by(email: params[:email])

    if @user
      if @user.confirmed?
        render json: { message: "User already confirmed." }, status: :unprocessable_entity
      else
        @user.resend_confirmation_instructions
        render json: { message: "Confirmation email sent." }, status: :ok
      end
    else
      render json: { message: "User not found." }, status: :not_found
    end
  end

  def show
    @user = resource_class.confirm_by_token(params[:confirmation_token])

    if @user.errors.empty?
      render json: { message: "User confirmed." }, status: :ok
    else
      render json: { message: "Invalid confirmation token." }, status: :unprocessable_entity
    end
  end
end
