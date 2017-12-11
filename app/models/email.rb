class Email
  include ActiveModel::Model
  extend ActiveModel::Callbacks
  attr_accessor :to, :cc, :bcc, :subject, :user, :template_id, :organization_id, :html_part, :account, :people_content, :content, :template

  validates :to, :subject, :html_part,        presence: true

  def send_email_to_users
    if self.valid?
      contacts = User.where(id: to)
      Email.start_mail_engine(contacts, self)
      return true
    else
      return false
    end
  end

  def self.start_mail_engine(contacts, email)
    email.start_mail_engine(contacts, email)
  end

  def start_mail_engine(contacts, content)
    contacts.each do |contact|
      UserMailer.send_email(contact, content).deliver_now!
    end
  end

end
