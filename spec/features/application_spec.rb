require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"
    expect(page).to have_content "About"

    click_on("About")

    expect(page).to have_content "Not much to say here"
  end
end
