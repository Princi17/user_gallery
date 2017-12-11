class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.new
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.update(user_params)
    redirect_to users_path
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path
  end

  def destroy
    @user = User.find_by_id(params[:id])
    if @user.nil?
      flash[:error] = "User not found"
    elsif @user.destroy
      flash[:success] = "User deleted successfully"
    end
    redirect_to users_path
  end

  def show

  end

  def compose_email
    @users = User.where(id: params[:user_ids])
  end

  def send_email
    @email = Email.new(params.require(:compose).permit!)
    if @email.send_email_to_users
      flash[:success] = "Emails would be sent shortly"
    else
      flash[:error] = @email.errors.full_messages.join(", ")
    end
    redirect_to(request.referrer || root_path)
  end

  private
    def user_params
      params.require(:user).permit!
    end
end
