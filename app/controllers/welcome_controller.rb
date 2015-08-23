class WelcomeController < ApplicationController
  protect_from_forgery

  def index
    
  end
  
  def subscribe

    @list_id = "2949330bef"
    gb = Gibbon::API.new

    gb.lists.subscribe({
    :id => @list_id,
    :email => {:email => params[:email][:address]},
    :double_optin => false
    })
     
    if gb.lists.subscribe
      flash[:notice] = "Thank you! Your email address has been saved successfully."
      redirect_to welcome_subscribe_path
    end
     
  end
    
  def success
    
  end
  
end
