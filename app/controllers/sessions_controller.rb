class SessionsController < ApplicationController
  def create
  	 doc = Doctor.find_by_email(params[:email])
    if doc.password_digest === (params[:password_digest])
      session[:doc_id] = doc.id
      redirect_to doctor_path(doc), notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid."
    end
  end
  def destroy
    session[:doc_id] = nil
    redirect_to doctors_path, notice: 'Logged out!'
  end
end
