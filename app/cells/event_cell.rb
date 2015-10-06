class EventCell < Cell::ViewModel
  property :location

  def show
    render
  end

  private

  def name
    model.name.truncate(50)
  end

  def month
    model.time.strftime("%b")
  end

  def day
    model.time.strftime("%d")
  end

  def time
    model.time
  end

  def styles
    model.dance_styles.map(&:name).join(", ")
  end

end
