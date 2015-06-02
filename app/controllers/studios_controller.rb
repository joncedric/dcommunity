class StudiosController < ApplicationController
  def index
  	@studio = Studio.new(name: 'Crossover')
  end
end
