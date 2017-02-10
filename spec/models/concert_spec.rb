require 'rails_helper'

RSpec.describe Concert, type: :model do

  it "can be saved to the database" do
    first_concert = Concert.new(
                            title: "RHCP",
                            review: "Loads of fun",
                            image: Rack::Test::UploadedFile.new('app/assets/images/1.jpg'))

    expect(first_concert.save).to be true
  end

  it "has a title and a review" do
    first_concert = Concert.new(
                            title: "RHCP",
                            review: "Loads of fun",
                            image: Rack::Test::UploadedFile.new('app/assets/images/1.jpg'))

    second_concert = Concert.find_by(first_concert.id)

    expect(second_concert.title).to eq "RHCP"
    expect(second_concert.review).to eq "Loads of fun"
  end

end
