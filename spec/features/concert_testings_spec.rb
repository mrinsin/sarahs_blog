require 'rails_helper'

RSpec.feature "ConcertTestings", type: :feature do
  context "Creating concert reviews" do
    Steps "To add  book review" do

      Given "I am a registered user" do
        visit '/users/sign_up'
        click_on "Sign up"
        fill_in "Email", with: "mrin@sin.com"
        fill_in "Password", with: "mrinsin"
        fill_in "Password confirmation", with: "mrinsin"
        click_on "Sign up"
      end

      And "I am taken to the welcome page" do
        expect(page).to have_content("Live feed coming soon....")
      end

      Then "I can create a new concert review" do
        click_on "Concerts"
        click_on "New Concert Review"
        fill_in "Title", with: "RHCP"
        fill_in "Review", with: "stinky"
        attach_file("Image", Rails.root + "app/assets/images/1.jpg")
        click_on "Create Concert"
      end

      And "I can see the concert reviews I have created" do
        expect(page).to have_content "Concert was successfully created."
        expect(page).to have_content "RHCP"
        expect(page).to have_content "stinky"
      end
    end
  end
end
