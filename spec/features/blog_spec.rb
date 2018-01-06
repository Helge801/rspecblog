require 'rails_helper'

describe 'navigate' do

  describe 'index' do 
    it 'can be reached successfully' do
      visit blogs_path
      expect(page.status_code).to eq(200)
    end

    it "has a title of 'Justin's team won and the rest of us lost" do
      visit blogs_path
      expect(page).to have_content(/Justin's team won and the rest of us lost/)
    end
  end

  describe 'Creation' do

    it 'can be reached successfully' do
      visit new_blog_path
      expect(page.status_code).to eq(200)
    end

    it 'has a new form that can be reached' do
      visit new_blog_path
      
      fill_in 'blog[title]', with: "Some title"
      fill_in 'blog[body]', with: "Body"
      fill_in 'blog[image]', with: Faker::LoremPixel.image("600x300")

      expect(page).to have_content(/Body/)
    end
  end
end
