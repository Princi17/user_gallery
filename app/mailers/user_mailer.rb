class UserMailer  < ActionMailer::Base

  def send_email(contact, content)
    byebug
    from_email = "princinarula4@gmail.com"
    @content = content
    @contact = contact
    mail(to: @contact.email,
    subject: @content.subject,
    from: from_email)
  end


end
