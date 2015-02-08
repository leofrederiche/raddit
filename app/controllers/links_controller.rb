class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create

    if current_user

      @link = Link.create(link_params)
      @link.user_id = current_user.id

      @link.liked_by current_user

      if @link.save
        redirect_to root_path
      else
        render :new
      end

    else
      flash[:notice] = "Você precisa estar logado."
      redirect_to "/users/sign_in"
    end    
    
  end

  private
  def link_params
    params.require(:link).permit(:title, :url, :user_id)
  end

end