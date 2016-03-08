json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :teacher, :student, :parent
  json.url teacher_url(teacher, format: :json)
end
