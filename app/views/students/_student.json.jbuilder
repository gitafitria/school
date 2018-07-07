json.extract! student, :id, :name, :address, :dob, :is_valid, :semester, :created_at, :updated_at
json.url student_url(student, format: :json)
