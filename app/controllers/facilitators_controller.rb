class FacilitatorsController < ApplicationController
  before_action :set_facilitator, only: [:show, :update, :destroy]

  # GET /facilitators
  def index
    @facilitators = Facilitator.all

    render json: @facilitators
  end

  # GET /facilitators/1
  def show
    render json: @facilitator
  end

  # POST /facilitators
  def create
    @facilitator = Facilitator.new(facilitator_params)

    if @facilitator.save
      render json: @facilitator, status: :created, location: @facilitator
    else
      render json: @facilitator.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /facilitators/1
  def update
    if @facilitator.update(facilitator_params)
      render json: @facilitator
    else
      render json: @facilitator.errors, status: :unprocessable_entity
    end
  end

  # DELETE /facilitators/1
  def destroy
    @facilitator.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facilitator
      @facilitator = Facilitator.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def facilitator_params
      params.require(:facilitator).permit(:name, :tel_no, :email, :gender, :session_id)
    end
end
