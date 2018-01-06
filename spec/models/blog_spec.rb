require 'rails_helper'

RSpec.describe Blog, type: :model do
  describe "Creation" do
    before do 
      @blog = Blog.create(title: "Anything", body: "Anything", image: "Anything")
    end
    it 'can be created' do
      expect(@blog).to be_valid
    end

    it 'cannot be created without a title, body, or image' do
      @blog.title = nil
      @blog.body = nil
      @blog.image = nil
      expect(@blog).to_not be_valid
    end
  end
end