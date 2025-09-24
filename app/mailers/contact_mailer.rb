class ContactMailer < ApplicationMailer
  default to: 'info@muraterakin.av.tr', from: 'info@muraterakin.av.tr'

  def new_contact(contact)
    @contact = contact
    mail(
      subject: "Yeni İletişim Formu Mesajı: #{@contact[:name]}",
      from: "#{@contact[:name]} <info@muraterakin.av.tr>",  # display sender's name
      reply_to: @contact[:email]                             # visitor's actual email
    )
  end
end
