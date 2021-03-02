class Api::V1::PlayersController < ApplicationController
    def index
        @players = Player.all 
        # .order('name ASC')
        render json: @players
    end 

    def show
        @player = Player.find(params[:id])
        render json: @player, status: 200
    end 

    def create
        @player = Player.create(player_params)
        render json: @player, status: 200
    end


    def update 
        @player.update(player_params)
        if @player.save
          render json: @player, status: 200
        else
          render json: { errors: @player.errors.full_messages }, status: :unprocessible_entity
        end
    end 

    def destroy
        player = Player.find_by(id: params[:id])
        player.destroy
        render json: player
    end


    private

    def player_params
        params.permit(:name, :city, :state)
    end

    def find_player
    @player = Player.find(params[:id])
    end
end
