class DivorcesController < ApplicationController
  before_action :set_divorce, only:[:show, :destroy]

  def show
  end

  # def new
  #   @divorce = Divorce.new
  # end

  def new_etat_civil
    if current_user.divorce.nil?
      @divorce = Divorce.new
      @divorce.user = current_user
      @divorce.save
    else
      @divorce = current_user.divorce
    end
  end

  def update_etat_civil
    current_user.update(etat_civil_params)
    redirect_to etat_civil_divorce_documents_path(current_user.divorce)
  end

  def update_revenue
    current_user.update(revenue_params)
    redirect_to revenus_divorce_documents_path(current_user.divorce)
  end

  def update_charge
    current_user.update(charge_params)
    redirect_to charges_divorce_documents_path(current_user.divorce)
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
    params.require(:user).permit(:first_name, :last_name, :gender, :child_nb, :mariage_contract, :contract_type)
  end

  def revenue_params
    params.require(:user).permit(:status_pro, :statut_pro_conjoint, :property_nb, :bank_account_nb, :vehicle_nb)
  end

  def charge_params
    params.require(:user).permit(:credit_nb, :insurance_nb)
  end

end
