class PlayersController < ApplicationController
  def create
    @country = Country.find(params[:country_id])
    @player = @country.players.build(player_params)

    if @player.save
      render partial: "row_player", locals: { player: @player }, status: 200
    end
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end
end
