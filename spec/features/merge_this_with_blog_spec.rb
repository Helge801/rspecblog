require 'rails_helper'

describe 'delete' do
  before do
    @blog = Blog.create!(title: "Blog_title",
                  body: "blog_body",
                  image: Faker::LoremPixel.image("600x300")
                  )
  end

  it 'can be deleted' do
    visit blog_path(@blog)
    click_on 'Delete'

    expect(page.status_code).to eq(200)
  end
end