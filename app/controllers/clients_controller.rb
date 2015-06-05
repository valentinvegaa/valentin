class ClientsController < ApplicationController
  def index
    @clients=Client.all
  end
 
  def new
    @client=Client.new
  end

  def create
    @client=Client.create(client_params)
    if @client 
      redirect_to root_path, :notice=>"client "+@client.name+" created!"
    else
    end
  end

  def update
    @client=Client.find(params[:id])
    if @client.update_attributes(client_params)
      redirect_to client_path, :notice => "Funcionó"
    else
      #render "create"
    end
  end

  def destroy
    @client=Client.find(params[:id])
    @client.destroy
    redirect_to client_path, :notice=>"Cliente borrado"
  end

  def edit
    @client=Client.find(params[:id])
  end

  def show
    @client=Client.find(params[:id])
  end
  def client_params
    params.require(:client).permit(:name)
  end
end
