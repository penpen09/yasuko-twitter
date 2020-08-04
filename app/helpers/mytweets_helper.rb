module MytweetsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create' || action_name == 'confirm'
      confirm_mytweets_path
    elsif action_name == 'edit'
      confirm_mytweet_path
    end
  end

  def confirm_new_or_edit
    unless @mytweet.id?
      mytweets_path
    else
      mytweet_path
    end
  end

  def confirm_form_method
    @mytweet.id ? 'patch' : 'post'
  end

end
