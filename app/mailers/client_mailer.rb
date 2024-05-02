class ClientMailer < ApplicationMailer
    def registration_email
      @client = params[:client]
      @url = new_client_session_url
      mail(to: @client.email, subject: 'Complete your registration')
    end
  end