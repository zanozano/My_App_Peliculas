class SeriesController < ApplicationController
  before_action :set_series, only: [:show, :edit, :update, :destroy]

  def index
    @series = Serie.all
  end

  def show
  end

  def new
    @serie = Serie.new
  end

  def create
    @serie = Serie.new(serie_params)

    if @serie.save
      redirect_to series_path, notice: 'La serie ha sido creada exitosamente.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @serie.update(serie_params)
      redirect_to series_path, notice: 'La serie ha sido actualizada exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @serie.destroy
    redirect_to series_url, notice: 'La serie ha sido eliminada exitosamente.'
  end

  private

  def set_serie
    @serie = Serie.find(params[:id])
  end

  def series_params
    params.require(:serie).permit(:name, :description, :seasons)
  end
end
