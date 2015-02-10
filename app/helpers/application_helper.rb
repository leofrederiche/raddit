module ApplicationHelper

  def new_comment
    if current_user 
      render "new_comment"
    end
  end

end
