json.extract! teacher, :id, :name, :address, :dob, :is_valid, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
