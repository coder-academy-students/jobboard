# Preview all emails at http://localhost:3000/rails/mailers/company_registration_mailer
class CompanyRegistrationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/company_registration_mailer/response
  def response
    CompanyRegistrationMailer.response
  end

  # Preview this email at http://localhost:3000/rails/mailers/company_registration_mailer/received
  def received
    CompanyRegistrationMailer.received
  end

end
