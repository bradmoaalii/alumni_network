module ApplicationHelper
  def sign_in user
    if current_user 
      (link_to "Logout", destroy_user_session_path, method: :delete, :class => "black-text")
     else 
      (link_to "Sign In", new_user_session_path, :class => "black-text")
    end 
  end
end
