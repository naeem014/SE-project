class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private

  def current_doc
  	@current_doc ||= Doctor.find(session[:doc_id]) if session[:doc_id]
  end

  helper_method :current_doc
end
