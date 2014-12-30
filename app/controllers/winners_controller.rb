class WinnersController < ApplicationController

  # GET /winners
  # GET /winners.json
  def index
    @winners = Winner.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # Never trust parameters from the scary internet, only allow the white list through.
    def winner_params
      params.require(:winner).permit(:username)
    end
end
