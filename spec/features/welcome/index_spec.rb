require 'spec_helper'


 describe "Access the welcome page" do
 		it "access the index page" do
 			visit '/'
 		end


 		it "access the sobre page" do
 			visit :sobre
 			expect(page).to have_content("Ultravisão Franchising")
 		end






 end