require 'spec_helper'

describe DoctorsController do
	describe 'Search by Location' do
		it 'should display doctors' do
			fake_results = 
			get 'index'
			post :index, {:Location => 'Defence'}
			response.should be_success 
		end
	end
end

