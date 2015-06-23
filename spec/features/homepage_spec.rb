require "rails_helper"

RSpec.feature "User visits Homepage", :type => :feature do
  scenario "User sees title" do
    visit "/"

    expect(page).to have_text("Dcommunity")
  end
  scenario "User sees upcoming events" do
    Event.create!(time: 2.days.ago, name: "Old Bboy event", description: "Some description")
    Event.create!(time: 2.days.since, name: "Upcoming Popping event", description: "Some description")
    Event.create!(time: 3.days.since, name: "Last Hip Hop event", description: "Some description")

    visit "/"

    expect(page).to have_text("Upcoming Events")
    expect(page).to have_text("Upcoming Popping event")
    expect(page).to have_text("Last Hip Hop event")
    expect(page).to_not have_text("Old Bboy event")
  end
end
