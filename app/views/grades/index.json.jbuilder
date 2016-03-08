json.array!(@grades) do |grade|
  json.extract! grade, :id, :assignment, :student_id
  json.url grade_url(grade, format: :json)
end
