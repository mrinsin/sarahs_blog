require 'rails_helper'

RSpec.feature "BookReviews", type: :feature do
  context "creating book reviews" do
    Steps "to add a book review" do
      Given "I am registered user" do
        visit "/"
        click_on "Sign up"
        fill_in "Email", with: "j@j.com"
        fill_in "Password", with: "jessica"
        fill_in "Password confirmation", with: "jessica"
        click_on "Sign up"
      end
      Then "I am taken to the welcome page" do

        expect(page).to have_content "Live feed coming soon...."
      end
      Then "I can create a new book review" do
        click_on "Books"
        click_on "New Book Review"
        fill_in "Title", with: "The Blues"
        fill_in "Review", with: "Great book"
        attach_file("Image", Rails.root + "app/assets/images/one.png")
        click_on "Create Book"
      end
      And "I am taken back to the book reviews page" do
        expect(page).to have_content "Book was successfully created."
        expect(page).to have_content "The Blues"
     end
   end #endof steps
  end#end of context

end #end feature
