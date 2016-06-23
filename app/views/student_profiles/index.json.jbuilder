json.array!(@student_profiles) do |student_profile|
  json.extract! student_profile, :id, :first_name, :last_name, :portfolio, :github, :linkedin, :bio, :image, :phone, :available, :user_id
  json.url student_profile_url(student_profile, format: :json)
end
