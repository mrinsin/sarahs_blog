require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  context "Landing Pages" do
    Steps "to navigating Sarah's website as Sarah" do
      Given "I have signed up and logged in" do
        visit "/users/sign_in"
        click_on "Sign up"
        fill_in "Email", with: "mrin@sin.com"
        fill_in "Password", with: "mrinsin"
        fill_in "Password confirmation", with: "mrinsin"
        click_on "Sign up"
      end
    end
  end
end
