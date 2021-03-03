class Api::V1::BicyclesController < Api::V1::ApiController
  before_action :set_bicycle, only: %i[show update destroy]

  def index
    @bicycles = Bicycle.all

    render json: @bicycles
  end

  def show
    render json: @bicycle
  end

  def create
    @bicycle = Bicycle.new(bicycle_params)

    if @bicycle.save
      render json: @bicycle, status: :created
    else
      render json: @bicycle.errors, status: :unprocessable_entity
    end
  end

  def update
    if @bicycle.update(bicycle_params)
      render json: @bicycle
    else
      render json: @bicycle.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @bicycle.destroy
  end

  private

  def set_bicycle
    @bicycle = Bicycle.find(params[:id])
  end

  def bicycle_params
    params.require(:bicycle).permit(:name, :description, :wheel_size, :rim_color, :saddle_color, :price, :user_id)
  end
end
