require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
  	it "should have the content 'LoLSeeker'" do
  		visit '/static_pages/home'
  		expect(page).to have_content('LoLSeeker')
  	end
	
	it "should have the title'Home'" do
		visit '/static_pages/home'
		expect(page).to have_title("LoLSeeker | Home")
	end	
  end
end
