module ApplicationHelper

  def new_comment
    if current_user 
      render "new_comment"
    end
  end

  def navbar
    unless current_user
      render "layouts/navbar_with_user"
    else
      render "layouts/navbar_without_user"
    end
  end

end
