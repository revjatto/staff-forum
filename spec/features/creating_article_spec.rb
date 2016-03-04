require 'rails_helper'

RSpec.feature "creating Articles" do 

scenario "user create a new article" do

visit "/"

click_link "New Article"

fill_in "Title", with: "management visit information"
fill_in "Body", with: "When Management visit your site, they need to sign your log book and write comment of their visit."
click_button "Create Article"

expect(page).to have_content("Article created successfully")
expect(page.current_path).to eq(articles_path)
 end

end