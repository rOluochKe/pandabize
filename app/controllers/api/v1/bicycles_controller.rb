class Api::V1::BicyclesController < Api::V1::ApiController
  before_action :set_bicycle, only: %i[show update destroy]

  def index
    @bicycles = Bicycle.order(created_at: :desc).page(params[:page])

    render json: BicycleSerializer.new(@bicycles).serializable_hash
  end

  def show
    render json: BicycleSerializer.new(@bicycle).serializable_hash
  end

  def create
    @bicycle = Bicycle.new(bicycle_params)

    if bicycle.save
      render json: BicycleSerializer.new(bicycle).serializable_hash, status: :created
    else
      render json: { errors: bicycle.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @bicycle.update(bicycle_params)
      render json: BicycleSerializer.new(@bicycle).serializable_hash
    else
      render json: @bicycle.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @bicycle.destroy
    head 204
  end

  private

  def set_bicycle
    @bicycle = Bicycle.find(params[:id])
  end

  def bicycle_params
    params.require(:bicycle).permit(:name, :description, :wheel_size, :rim_color, :saddle_color, :price, :image_url,
                                    :user_id)
  end
end
