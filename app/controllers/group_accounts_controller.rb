class GroupAccountsController < ApplicationController
  before_action :set_group_account, only: [:show, :edit, :update, :destroy]

  def index
    @group_accounts = GroupAccount.all
    render json: @group_accounts
  end

  def show
    render json: @group_account
  end

  def create
    @group_account = GroupAccount.new(group_account_params)

    respond_to do |format|
      if @group_account.save
        format.html { redirect_to @group_account, notice: 'Group account was successfully created.' }
        format.json { render :show, status: :created, location: @group_account }
      else
        format.html { render :new }
        format.json { render json: @group_account.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @group_account.update(group_account_params)
        format.json { render :show, status: :ok, location: @group_account }
      else
        format.json { render json: @group_account.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @group_account.destroy
    respond_to do |format|
      format.html { redirect_to group_accounts_url, notice: 'Group account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_account
      @group_account = GroupAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_account_params
      params.require(:group_account).permit(:name)
    end
end
