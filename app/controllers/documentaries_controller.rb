class DocumentariesController < ApplicationController
  before_action :set_documentary, only: [:show, :edit, :update, :destroy]

  def index
    @documentaries = Documentary.all
  end

  def show
  end

  def new
    @documentary = Documentary.new
  end

  def create
    @documentary = Documentary.new(documentary_params)

    if @documentary.save
      redirect_to documentaries_path, notice: 'El documental ha sido creado exitosamente.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @documentary.update(documentary_params)
      redirect_to documentaries_path, notice: 'El documental ha sido actualizado exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @documentary.destroy
    redirect_to documentaries_url, notice: 'El documental ha sido eliminado exitosamente.'
  end

  private

  def set_documentary
    @documentary = Documentary.find(params[:id])
  end

  def documentary_params
    params.require(:documentary).permit(:name, :synopsis, :director)
  end
end
