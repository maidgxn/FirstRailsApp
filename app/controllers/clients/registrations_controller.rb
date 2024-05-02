class Clients::RegistrationsController < Devise::RegistrationsController
    skip_before_action :require_no_authentication, only: [:new, :create]
  
    def create
        @client = Client.new(client_params)
        if @client.save
          redirect_to clients_path, notice: 'Client was successfully created.'
        else
          render :new
        end
      end
    
      private

      def client_params
        params.require(:client).permit(:email, :password, :admin)
      end
  end