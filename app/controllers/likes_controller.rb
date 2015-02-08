class LikesController < ApplicationController

  def uplike

    if current_user
      @link = Link.find params[:id]
      @link.liked_by current_user

      if @link.save
        flash[:notice] = "Votado! Confira!"
        redirect_to root_path
      else
        flash[:notice] = "Ouve algum erro"
        redirect_to root_path
      end
    else
      flash[:notice] = "Você precisa estar logado."
      redirect_to "/users/sign_in"
    end

  end

  def downlike

    if current_user
      @link = Link.find params[:id]
      @link.downvote_from current_user

      if @link.save
        flash[:notice] = "Votado! Confira!"
        redirect_to root_path
      else
        flash[:notice] = "Ouve algum erro"
        redirect_to root_path
      end
    else
      flash[:notice] = "Você precisa estar logado."
      redirect_to "/users/sign_in"
    end

  end

end