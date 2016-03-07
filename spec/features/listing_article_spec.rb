require "rails_helper"

RSpec.feature "Listing Articles" do
   
    before do
        @article1 = Article.create(title: "Daily Log Book", body: "Please when filling the daily log book in your site, remember to sign it with your initials. This is a legal document")    
        
        @article2 = Article.create(title: "New Job at KCL WestSide", body: "Valid SIA Door Supervision License/ CCTV Licence Have previous experience of door/event work Have good customer service skills Have excellent communication skills both verbal and written Have experience security reporting procedures")

end
    
    scenario "List all Articles" do
       visit "/"
        
        expect(page).to have_content(@article1.title)
        expect(page).to have_content(@article1.body)
        
        expect(page).to have_content(@article2.title)
        expect(page).to have_content(@article2.body)
        
        expect(page).to have_link(@article1.title)
        expect(page).to have_link(@article2.title)
    end
end