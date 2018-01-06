require 'rails_helper'

describe 'navigate' do
  
  describe 'index' do 
    it 'can be reached successfully' do
      visit blog_index_path
      expect(page.status_code).to eq(200)
    end

    it "has a title of 'Justin's team won and the rest of us lost" do
      visit blog_index_path
      expect(page).to have_content(/Justin's team won and the rest of us lost/)
    end
  end
end
