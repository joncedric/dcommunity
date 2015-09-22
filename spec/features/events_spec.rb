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
    Event.create(time: 2.days.since, name: "destructive steps", description: "asdasdasd", location: "sydney")
    visit "/events/1"

    expect(page).to have_text("sydney")
  end

  scenario "User sees cost" do
    Event.create(time: 2.days.since, name: "destructive steps", description: "asdasdasd", location: "sydney", cost: "Free")
    visit "/events/1"

    expect(page).to have_text("Free")
  end

  scenario "User sees style" do
    Event.create(time: 2.days.since, name: "destructive steps", description: "asdasdasd", dance_styles: [DanceStyle.new(name: "Locking"), DanceStyle.new(name: "Popping")])
    visit "/events/1"

    expect(page).to have_text("Popping")
    expect(page).to have_text("Locking")
  end

  scenario "User sees host" do
    Event.create(time: 2.days.since, name: "destructive steps", description: "asdasdasd", dance_styles: [DanceStyle.new(name: "Locking"), DanceStyle.new(name: "Popping")], host: "Dancekool")
    visit "/events/1"

    expect(page).to have_text("Dancekool")
  end  

  scenario "User sees time duration in hours" do
    Event.create(time: Time.zone.parse('2015-08-22 18:00'), end_time: Time.zone.parse('2015-08-22 21:00'), name: "destructive steps", description: "asdasdasd", dance_styles: [DanceStyle.new(name: "Locking"), DanceStyle.new(name: "Popping")], host: "Dancekool")
    visit "/events/1"

  	expect(page).to have_text("Saturday 22 August at 6:00pm - 9:00pm")
  end
end
