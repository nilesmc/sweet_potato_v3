class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = Fae::User.new
  end

  def detail
    @user = Fae::User.find(params[:id])

    if current_user == @user
      render 'users/detail'
    elsif [1, 2].include?(current_user.role.id)
      render 'users/detail'
    else
      return show_404
    end
  end

  def edit
  end

  def settings
    @user = current_user
  end

  def create
    @user = Fae::User.new(user_params)
    @user.role = Fae::Role.find(set_role)

    if @user.save
      redirect_to users_detail_path(@user.id), notice: t('fae.save_notice')
    else
      render action: 'new', error: t('fae.save_error')
    end
  end

  def update
    params[:user].delete(:password) if params[:user][:password].blank?
    params[:user].delete(:password_confirmation) if params[:user][:password].blank? and params[:user][:password_confirmation].blank?

    if @user.update(user_params)
      path = current_user.super_admin? ? fae.users_path : users_detail_path(@user.id)
      redirect_to path, notice: t('fae.save_notice')
    else
      render action: 'edit', error: t('fae.save_error')
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end

  private

  def set_role
    # set to just a sp_user for now
    '4'
    # params[:user][:organizer].present? ? '5' : '4'
  end

  def set_user
    @user = Fae::User.find(params[:id])
  end

  def user_params
    params[:user].delete(:role) if params[:user][:role].present?

    params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
  end
end