class ContactsController < ApplicationController
  def create
    contact = contact_params
    Rails.logger.info "Contact form submitted: #{contact.inspect}"

    # Send email
    ContactMailer.new_contact(contact).deliver_now

    flash[:notice] = "Mesajınız gönderildi — teşekkürler!"
    redirect_to contact_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :message)
  end


end
