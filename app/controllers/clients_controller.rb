class ClientsController < ApplicationController
    before_action :find_client, only: [:show, :update]

    def index 
        clients = Client.all 
        render json: clients, status: :ok 
    end

    def show 
        render json: @client, status: :ok 
    end

    def update 
        @client.update!(client_params)
        render json: @client, status: :ok 
    end

    private 

    def find_client 
        @client = Client.find(params[:id])
    end

    def client_params 
        params.permit(:name, :age)
    end
end
