class VideogamesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @videogames = Videogame.all
  end

  def show
    @videogame = Videogame.find(params[:id])
  end

  def new
  @videogame = Videogame.new
  end

  def create
    @videogame = Videogame.new(params[:videogame])
    @videogame.save

    redirect_to videogame_path(@videogame)
  end

  def edit
    @videogame = Videogame.find(params[:id])
  end

  def update
    @videogame = Videogame.find(params[:id])
    @videogame.update(videogame_params)
    redirect_to videogame_path(@videogame)
  end

  def destroy
    @videogame = Videogame.find(params[:id])
    @videogame.destroy
    redirect_to videogames_path, status: :see_other
  end
  private

  def videogame_params
    params.require(:videogame).permit(:nom, :plateforme, :termine)
  end
end
