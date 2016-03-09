class AuthenticateController < ApplicationController
  def login
    if request.post?
      user = User.find_by(email: params[:email])

      if user &&  user.authenticate(params[:password])
        redirct_to teachers_path, notice: "Login successful!"
      else
        flash[:notice] = "Thank you, but you must try again."
      end
    end
  end

  def logout
  end
end
