class ContactsController < ApplicationController
   def create
    # Strong params
    contact = contact_params

    # For now, just log the data so we know the form works
    Rails.logger.info "Contact form submitted: #{contact.inspect}"

    # Later we’ll send email, but for now show success
    flash[:notice] = "Mesajınız gönderildi — teşekkürler!"
    redirect_to contact_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :message)
  end
end
