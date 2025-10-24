class Users::PasswordsController < Devise::PasswordsController
  def create
    email = resource_params[:email]

    if email.blank?
      render json: { message: "Email can't be blank." }, status: :unprocessable_entity and return
    end

    resource_class.send_reset_password_instructions(email: email)

    render json: { message: "If the email exists, password reset instructions have been sent." }, status: :ok
  end

  def update
    if password_update_params[:reset_password_token].blank?
      authenticate_user!

      unless current_user.valid_password?(password_update_params[:old_password])
        render json: { errors: [ "Old password is incorrect" ] }, status: :unprocessable_entity and return
      end

      if current_user.update(password: password_update_params[:password])
        render json: { message: "Password updated successfully for authenticated user" } and return
      else
        render json: { errors: current_user.errors.full_messages }, status: :unprocessable_entity and return
      end
    end

    resource = resource_class.reset_password_by_token(password_update_params)

    if resource.errors.present?
      render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity and return
    end

    resource.update(password: password_update_params[:password])
    render json: { message: "Password updated successfully" }
  rescue StandardError => e
    render json: { message: "An unexpected error occurred" }, status: :internal_server_error
  end

  private

  def password_update_params
    params.expect(password_reset: [ :reset_password_token, :password, :password_confirmation, :old_password ])
  end
end
