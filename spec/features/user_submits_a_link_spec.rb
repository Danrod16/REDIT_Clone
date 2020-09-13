require "rails_helper"
require "capybara/rails"

# As a user
RSpec.feature "User submits a link" do
  scenario "they see the page for the submitted link" do
    link_title = "This Testing Rails book is awesome!"
    link_url = "http://testingrailsbook.com"
#  When I visit the home page
    visit root_path
#  And I click "Submit a link post"
    click_on "Submit a new link"
#  And I fill in my title and URL
    fill_in "link_title", with: link_title
    fill_in "link_url", with: link_url
#  And I click "Submit"
    click_on "Submit!"
#  Then I should see the title on the page
# And it should link to the given URL
    expect(page).to have_link link_title, href: link_url
  end
end
