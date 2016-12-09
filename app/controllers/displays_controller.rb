class DisplaysController < ApplicationController
  before_action :set_display, only: [:show, :update, :destroy]

  # GET /displays
  def index
    @displays = Display.all

    render json: @displays
  end

  # GET /displays/1
  def show
    render json: @display
  end

  # POST /displays
  def create
    @display = Display.new(display_params)

    if @display.save
      render json: @display, status: :created, location: @display
    else
      render json: @display.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /displays/1
  def update
    if @display.update(display_params)
      render json: @display
    else
      render json: @display.errors, status: :unprocessable_entity
    end
  end

  # DELETE /displays/1
  def destroy
    @display.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_display
      @display = Display.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def display_params
      params.require(:display).permit(:name, :theme, :users_id, :public, :archived, :items_id, :likes, :size, :layout, :ar)
    end
end
