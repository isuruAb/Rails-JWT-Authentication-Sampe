class ElephantsController < ApplicationController
  before_action :authenticate_user
  before_action :set_elephant, only: [:show, :update, :destroy]

  # GET /elephants
  def index
    @elephants = Elephant.all

    render json: @elephants
  end

  # GET /elephants/1
  def show
    render json: @elephant
  end

  # POST /elephants
  def create
    @elephant = Elephant.new(elephant_params)

    if @elephant.save
      render json: @elephant, status: :created, location: @elephant
    else
      render json: @elephant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /elephants/1
  def update
    if @elephant.update(elephant_params)
      render json: @elephant
    else
      render json: @elephant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /elephants/1
  def destroy
    @elephant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elephant
      @elephant = Elephant.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def elephant_params
      params.require(:elephant).permit(:height)
    end
end
