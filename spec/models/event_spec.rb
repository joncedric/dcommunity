require "rails_helper"

RSpec.describe Event do
  describe '.create!' do
    it 'Saves expected date' do
      date = Time.now
      Event.create!(time: date, name: "asdasdasd", description: "asdsadasd")

      expect(Event.last.time).to eq date
    end
  end
end
