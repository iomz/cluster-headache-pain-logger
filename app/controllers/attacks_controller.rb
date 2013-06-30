class AttacksController < ApplicationController
  def index
    @attacks = Attack.new
    @attacks = Attack.all(:order => "created_at")
  end

  def create
    @attck = Attack.new(params[:attack])
    @attack.save
    redirect_to :attacks
  end
end
