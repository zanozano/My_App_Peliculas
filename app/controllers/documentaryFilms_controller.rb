class DocumentaryFilmsController < ApplicationController
  validates :name, :synopsis, :director, presence: true
  before_action :set_documentary_film, only: [:show, :edit, :update, :destroy]

  def index
    @documentary_films = DocumentaryFilm.all
  end

  def show
  end

  def new
    @documentary_film = DocumentaryFilm.new
  end

  def create
    @documentary_film = DocumentaryFilm.new(documentary_film_params)

    if @documentary_film.save
      redirect_to documentary_films_path, notice: 'El documental ha sido creado exitosamente.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @documentary_film.update(documentary_film_params)
      redirect_to documentary_films_path, notice: 'El documental ha sido actualizado exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @documentary_film.destroy
    redirect_to documentary_films_url, notice: 'El documental ha sido eliminado exitosamente.'
  end

  private

  def set_documentary_film
    @documentary_film = DocumentaryFilm.find(params[:id])
  end

  def documentary_film_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end
