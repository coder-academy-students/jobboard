json.array!(@jobs) do |job|
  json.extract! job, :id, :company_id, :title, :remote, :address, :city, :state, :country, :closing_date, :status, :job_type_id, :experience_level
  json.url job_url(job, format: :json)
end
