class CommentsController < ApplicationController

  def create
    @link = Link.find params[:id]

    @new_comment = Comment.create(params_comment)

    @new_comment.id_user = current_user.id
    @new_comment.id_link = @link.id

    if @new_comment.save
      redirect_to show_link_path(@link.id)
    else
      flash[:notice] = "Ops, algo deu errado, tente novamente."
      redirect_to show_link_path(@link.id)
    end

  end

  private
  def params_comment
    params.require(:comment).permit(:id_user, :id_link, :comment)
  end

end