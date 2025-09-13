class ContactMailer < ApplicationMailer
  default to: 'av.muraterakin@gmail.com'

  def new_contact(contact)
    @contact = contact
    mail(
      subject: "Yeni İletişim Formu Mesajı: #{@contact[:name]}",
      from: @contact[:email]
    )
  end
end
