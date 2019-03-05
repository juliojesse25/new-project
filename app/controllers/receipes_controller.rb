class ReceipesController < ApplicationController
  before_action :set_receipe, only: [:show, :update, :destroy]

  # GET /receipes
  def index
    @receipes = Receipe.all

    render json: @receipes
  end

  # GET /receipes/1
  def show
    render json: @receipe
  end

  # POST /receipes
  def create
    @receipe = Receipe.new(receipe_params)

    if @receipe.save
      render json: @receipe, status: :created, location: @receipe
    else
      render json: @receipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /receipes/1
  def update
    if @receipe.update(receipe_params)
      render json: @receipe
    else
      render json: @receipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /receipes/1
  def destroy
    @receipe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receipe
      @receipe = Receipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def receipe_params
      params.require(:receipe).permit(:name, :description)
    end
end
