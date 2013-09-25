require 'spec_helper'

feature "employee records inventory", %Q{
	As a food service employee
	I want to receive inventory
	So that it can be recorded that we have food items
} do
	
	# Acceptance Criteria:

	# I must specify a title, description, and quantity of the food item
	# If I do not specify the required information, I am prompted to fix errors and to resubmit
	# If I specify the required information, my inventory entry is recorded.

	scenario 'records inventory information' do
		visit '/'
		fill_in 'Title', with: 'Food'
		fill_in 'Description', with: 'My description'
		fill_in 'Quantity', with: 0
		click_button 'Enter Record'
		expect(page).to have_content('You entered a record successfully')
	end
end