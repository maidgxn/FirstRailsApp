class ClientsController < ApplicationController
    before_action :authenticate_client!
    before_action :set_client, only: [:show, :edit, :update, :destroy]
    
    def index
        if current_client.admin?
            @clients = Client.all
        end
    end
    
    def update
      @client = Client.find(params[:id])
    
      if @client.update(client_params)
        redirect_to @client, notice: 'Client was successfully updated.'
      else
        render :edit
      end
    end


    def show
        @client = Client.find(params[:id])
      end

  
    def destroy
        @client = Client.find(params[:id])
        @client.destroy
        redirect_to clients_path, notice: 'Client was successfully deleted.'
    end

    def new
      @client = Client.new
    end
    
    def create
      @client = Client.new(client_params)
      if @client.save
        ClientMailer.with(client: @client).registration_email.deliver_now
        redirect_to @client, notice: 'Client was successfully created.'
      else
        render :new
      end
    end
    
    private
    
def client_params
  params.require(:client).permit(:email, :password, :admin)
end

    def set_client
      @client = Client.find(params[:id])
    end

  end