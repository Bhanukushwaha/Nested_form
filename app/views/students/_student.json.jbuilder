json.extract! student, :id, :first_name, :last_name, :city, :description, :test, :created_at, :updated_at
json.url student_url(student, format: :json)
