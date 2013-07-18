require 'spec_helper'
describe "Static pages" do
	describe "Home page" do

		it "should have the h1 'Practice App'" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "Practice App")
		end

		it "should have the content 'Practice App'" do
			visit '/static_pages/home'
			page.should have_content('Practice App')

		end
	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end

		it "should have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "Help")
		end
	end

	describe "About page" do
		it "should have the h1 'About'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "About")
		end

		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			page.should have_content('About Us')
		end
	end
end