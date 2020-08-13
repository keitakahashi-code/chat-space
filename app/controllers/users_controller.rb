class UsersController < ApplicationController

  def edit
    if new_group.edit("#")
      redirect_to root_path
      begin
        render :edit
      end
    end
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    begin
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
  
    rescue => exception
      
    else
      
    end
end
