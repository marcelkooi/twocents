class WelcomeController < ApplicationController
  
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
     
     
  end
    
end
