require 'rails_helper'

RSpec.describe Book, type: :model do

  it "can be saved to the database" do

    new_book = Book.new
    new_book.title = "New"
    new_book.review = "Very good"
    new_book.image = Rack::Test::UploadedFile.new('app/assets/images/one.png')
    new_book.save
    expect(new_book.save).to be true
  end
  it "should have a title and review" do
    new_book = Book.new
    new_book.title = "New"
    new_book.review = "Very good"
    new_book.image = Rack::Test::UploadedFile.new('app/assets/images/one.png')

    second_book = Book.find_by(new_book.id)

    expect(new_book.title).to eq "New"
    expect(new_book.review).to eq "Very good"
  end
end
