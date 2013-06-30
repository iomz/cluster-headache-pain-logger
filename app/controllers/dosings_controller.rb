class DosingsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_dosing, only: [:show, :edit, :update, :destroy]

  # GET /dosings
  # GET /dosings.json
  def index
    @dosings = Dosing.where(:user_id => current_user.id)
  end

  # GET /dosings/1
  # GET /dosings/1.json
  def show
  end

  # GET /dosings/new
  def new
    @dosing = Dosing.new
  end

  # GET /dosings/1/edit
  def edit
  end

  # POST /dosings
  # POST /dosings.json
  def create
    @dosing = Dosing.new(dosing_params)

    respond_to do |format|
      if @dosing.save
        format.html { redirect_to @dosing, notice: 'Dosing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dosing }
      else
        format.html { render action: 'new' }
        format.json { render json: @dosing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dosings/1
  # PATCH/PUT /dosings/1.json
  def update
    respond_to do |format|
      if @dosing.update(dosing_params)
        format.html { redirect_to @dosing, notice: 'Dosing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dosing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dosings/1
  # DELETE /dosings/1.json
  def destroy
    @dosing.destroy
    respond_to do |format|
      format.html { redirect_to dosings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dosing
      @dosing = Dosing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dosing_params
      params.require(:dosing).permit(:attack_id, :drug_id, :dosed_at)
    end
end
