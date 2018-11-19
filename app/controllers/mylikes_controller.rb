class MylikesController < ApplicationController
  def index
    
    user_id = 0
    
    if current_user != nil
      user_id = current_user.id
    end
            
    @likes= Like.where(:user_id => user_id)

    render("my_likes_templates/index.html.erb")
  end

  def show
    @like = Like.find(params.fetch("id_to_display"))

    render("my_likes_templates/show.html.erb")
  end

end
