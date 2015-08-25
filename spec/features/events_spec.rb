require "rails_helper"

RSpec.feature "User visits event", :type => :feature do
  scenario "User sees image" do
    extend ActionDispatch::TestProcess
    
    file = fixture_file_upload('files/event_image.jpg', 'image/jpg')
    Event.create(time: 2.days.since, name: "destructive steps", description: "asdasdasd", flyer_image: file)
    visit "/events/1"

    expect(page).to have_css("img[src*='event_image']")
  end
  scenario "User sees location" do
    extend ActionDispatch::TestProcess
    
    Event.create(time: 2.days.since, name: "destructive steps", description: "asdasdasd", location: "sydney")
    visit "/events/1"

    expect(page).to have_text("sydney")
  end
  scenario "User sees cost" do
    extend ActionDispatch::TestProcess
    
    Event.create(time: 2.days.since, name: "destructive steps", description: "asdasdasd", location: "sydney", cost: "Free")
    visit "/events/1"

    expect(page).to have_text("Free")
  end
  scenario "User sees style" do
    extend ActionDispatch::TestProcess
    
    Event.create(time: 2.days.since, name: "destructive steps", description: "asdasdasd", flyer_image: file)
    visit "/events/1"

    expect(page).to have_css("img[src*='event_image']")
  end

end
