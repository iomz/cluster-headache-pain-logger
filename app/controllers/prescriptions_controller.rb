class PrescriptionsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_prescription, only: [:show, :edit, :update, :destroy]

  # GET /prescriptions
  # GET /prescriptions.json
  def index
    @prescriptions = Prescription.where(:user_id => current_user.id).order("prescribed_at DESC")
  end

  # GET /prescriptions/1
  # GET /prescriptions/1.json
  def show
  end

  # GET /prescriptions/new
  def new
    @prescription = Prescription.new
  end

  # GET /prescriptions/1/edit
  def edit
  end

  # POST /prescriptions
  # POST /prescriptions.json
  def create
    @prescription = Prescription.new(prescription_params)
    @prescription.user_id = current_user.id

    respond_to do |format|
      # FIXME: new and delete hook
      if @prescription.save
        if (Stock.where(:user_id => current_user.id, :drug_id => @prescription.drug_id).first!= nil)
          new_quantity = Stock.where(:user_id => current_user.id, :drug_id => @prescription.drug_id).order("updated_at DESC").first.quantity_available + @prescription.quantity
        else
          new_quantity = @prescription.quantity
        end
        @stock = Stock.new(user_id: current_user.id, quantity_available: new_quantity, drug_id: @prescription.drug_id)
        @stock.save
        format.html { redirect_to @prescription, notice: 'Prescription was successfully created.' }
        format.json { render action: 'show', status: :created, location: @prescription }
      else
        format.html { render action: 'new' }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescriptions/1
  # PATCH/PUT /prescriptions/1.json
  def update
    respond_to do |format|
      if @prescription.update(prescription_params)
        format.html { redirect_to @prescription, notice: 'Prescription was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescriptions/1
  # DELETE /prescriptions/1.json
  def destroy
    new_quantity = Stock.where(:user_id => current_user.id, :drug_id => @prescription.drug_id).order("updated_at DESC").first.quantity_available - @prescription.quantity
    @stock = Stock.new(user_id: current_user.id, quantity_available: new_quantity, drug_id: @prescription.drug_id)
    @stock.save
 
    @prescription.destroy
    respond_to do |format|
      format.html { redirect_to prescriptions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescription
      @prescription = Prescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prescription_params
      params.require(:prescription).permit(:user_id, :prescribed_at, :drug_id, :quantity, :quantity)
    end
end
