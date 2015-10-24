require "rails_helper"

RSpec.feature "User visits Style", :type => :feature do
  scenario "User sees style name" do
    style = DanceStyle.create!(name: "Hip Hop", description: "Hip to the Hop")

    visit "/dance_styles/#{style.id}"

    expect(page).to have_text("Hip Hop")
  end
  scenario "User sees upcoming events in a particular style" do
    hip_hop_style = DanceStyle.create!(name: "Hip Hop", description: "Hip to the Hop")
    popping_style = DanceStyle.create!(name: "Popping", description: "Robots and Stuff")

    Event.create!(time: 2.days.ago, name: "Old Hip Hop event", description: "Some description", dance_styles: [hip_hop_style])
    Event.create!(time: 2.days.since, name: "Upcoming Hip Hop event", description: "Some description", dance_styles: [hip_hop_style])
    Event.create!(time: 3.days.since, name: "Last Popping event", description: "Some description", dance_styles: [popping_style])

    visit "/dance_styles/#{hip_hop_style.id}"

    expect(page).to have_text("Upcoming Events")
    expect(page).to have_text("Upcoming Hip Hop event")
    expect(page).to_not have_text("Last Popping event")
    expect(page).to_not have_text("Old Hip Hop event")
  end
end
