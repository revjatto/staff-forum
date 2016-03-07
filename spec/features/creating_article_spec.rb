require 'rails_helper'

RSpec.feature "creating Articles" do 

scenario "user create a new article" do

visit "/"

click_link "New Article"

fill_in "Title", with: "management visit information"
fill_in "Body", with: "When Management visit your site, they need to sign your log book and write comment of their visit."
click_button "Create Article"

expect(page).to have_content("Article created successfully")
expect(page.current_path).to eq(article_path)
 end

scenario "user failed to create a new article" do

    visit "/"

click_link "New Article"

fill_in "Title", with: ""
fill_in "Body", with: ""
click_button "Create Article"

    expect(page).to have_content("Article has not been created")
    expect(page).to have_content("Title cannot be blank or empty")
    expect(page).to have_content("Body of the article can't be empty")

end
end