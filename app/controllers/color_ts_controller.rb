class ColorTsController < ApplicationController
  before_action :set_color_t, only: [:show, :update, :destroy]

  # GET /color_ts
  def index
    @color_ts = ColorT.all

    render json: @color_ts
  end

  # GET /color_ts/1
  def show
    render json: @color_t
  end

  # POST /color_ts
  def create
    @color_t = ColorT.new(color_t_params)

    if @color_t.save
      render json: @color_t, status: :created, location: @color_t
    else
      render json: @color_t.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /color_ts/1
  def update
    if @color_t.update(color_t_params)
      render json: @color_t
    else
      render json: @color_t.errors, status: :unprocessable_entity
    end
  end

  # DELETE /color_ts/1
  def destroy
    @color_t.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_color_t
      @color_t = ColorT.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def color_t_params
      params.require(:color_t).permit(:email, :comments)
    end
end
