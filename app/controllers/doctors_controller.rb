# This file is app/controllers/doctors_controller.rb
class DoctorsController < ApplicationController
	def index
		@doctors = Doctor.all
		if @doctors === nil
			@doctors = []
		end
		@spec = params[:Specialization]
		if @spec != nil
			@doctors_tmp = Doctor.all
			@doctors = Array.new()
			@doctors_tmp.each do |doctor|
				if @spec.casecmp(doctor.Specialization) == 0
					@doctors << doctor
				end
			end
		end
		@loc = params[:Location]
		if @loc != nil
			@doctors_tmp = Doctor.all
			@doctors = Array.new()
			@doctors_tmp.each do |doctor|
				if @loc.casecmp(doctor.Location) == 0
					@doctors << doctor
				end
			end
		end	
	end

	def new
 	end

  	def create
    	@doctor = Doctor.create!(params[:doctor])
    	if @doctor.save
    		session[:doc_id] = @doctor.id
      		redirect_to doctor_path(@doctor), notice: "Thank you for signing up!"
    	else
      		render "new"
    	end
  	end

  	def show
  		id = params[:id]
  		@doc = Doctor.find(id)
  	end

  	def edit
  		@doc = Doctor.find(params[:id])
  	end

  	def update
	    @doc = Doctor.find(params[:id])
	    @doc.update_attributes!(params[:doctor])
	    flash[:notice] = "Your profile was successfully updated."
    redirect_to doctor_path(@doc)
  end
end