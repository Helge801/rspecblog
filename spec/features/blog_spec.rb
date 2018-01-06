# require 'rails_helper'

# describe 'navigate' do

#   describe 'index' do 
#     it 'can be reached successfully' do
#       visit blog_index_path
#       expect(page.status_code).to eq(200)
#     end

#     it "has a title of 'Justin's team won and the rest of us lost" do
#       visit blog_index_path
#       expect(page).to have_content(/Justin's team won and the rest of us lost/)
#     end

#     it 'can be reached successfully' do
#       visit blog_new_path
#       expect(page.status_code).to eq(200)
#     end
#   end

#   describe 'Creation' do
#     it 'has a new form that can be reached' do
#       fill_in 'blog[title]', with: 'Some title'
#       fill_in 'blog[body]', with: 'Body'
#       fill_in 'blog[image]', with: 'NyanCat'

#       click_on "Save"

#       expect(page).to have_content("Body")
#     end
#   end
# end
