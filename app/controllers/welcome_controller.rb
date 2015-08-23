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
      redirect_to welcome_thankyou_path
    end
     
  end
    
  def thankyou
    
  end
  
end
