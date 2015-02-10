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

  def show
    @new_comment = Comment.new
    @link = Link.find params[:id]
    @user = User.find_by_id(@link.user_id)
    
    @comments = @link.link_comments
  end

  private
  def link_params
    params.require(:link).permit(:title, :url, :user_id)
  end

end