require "rails_helper"

RSpec.describe DanceStyle do
  describe '.top_styles' do
    it 'returns the top 4 dance styles' do
      hip_hop_style = DanceStyle.create!(name: "Hip Hop")
      popping_style = DanceStyle.create!(name: "Popping")
      breaking_style = DanceStyle.create!(name: "Breaking")
      locking_style = DanceStyle.create!(name: "Locking")
      waacking_style = DanceStyle.create!(name: "Waacking")
      puts DanceStyle.count 
      DanceStyle.top_styles

      expect(DanceStyle.top_styles.to_a).to include(hip_hop_style, popping_style, breaking_style, locking_style)
    end
  end
end
