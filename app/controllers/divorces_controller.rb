class DivorcesController < ApplicationController
  before_action :set_divorce, only:[:show, :destroy]

  def show
  end

  # def new
  #   @divorce = Divorce.new
  # end

  def new_etat_civil
    @divorce = Divorce.new
    @divorce.user = current_user
    @divorce.save
  end

  def update_etat_civil
    current_user.update(etat_civil_params)
    redirect_to etat_civil_divorce_documents_path(current_user.divorces.first)
  end
  # def create
  #   if current_user.divorces.size == 1
  #     redirect_to divorce_path(divorce)

  #   else
  #     @divorce = Divorce.new(divorces_params)
  #     @divorce.user_id = current_user.id
  #     if @divorce.save
  #         redirect_to etat_civil_path
  #     else
  #       render :new
  #     end
  #   end
  # end

  def destroy
    @divorce = current_user.divorce
    @divorce.destroy
    redirect_to root_path
  end

  private

  def set_divorce
    @divorce = Divorce.find(params[:id])
  end

  def divorces_params
    params.require(:divorce).permit(:separation_type)
  end

  def etat_civil_params
    params.require(:user).permit(:gender, :child_nb, :status_pro, :bank_account_nb, :credit_nb, :insurance_nb, :vehicle_nb)
  end

end
