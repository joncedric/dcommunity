json.array!(@dance_classes) do |dance_class|
  json.extract! dance_class, :id, :time, :description, :dance_style_id, :teacher_id
  json.url dance_class_url(dance_class, format: :json)
end
