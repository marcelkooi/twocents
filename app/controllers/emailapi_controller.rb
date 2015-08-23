class EmailapiController < ApplicationController
  
  def index
  end
  
  def subscribe
    
    @list_id = "2949330bef"
    
    gb = Gibbon::Request.new(api_key: "d539b7a1e8fbd86aa9cae49a078ed306-us11")
    
    gb.timeout = 10

    # gb.lists(@list_id).members.create(body: 
    # {email_address: "email_address", 
    # status: "subscribed", 
    # merge_fields: {FNAME: "Bob", LNAME: "Smith"}})
    
    # gb.lists.subscribe({
    #   :id => @list_id,
    #   :email => {:email => params[:email][:address]}
    #   })
    
    gb.lists(@list_id).members.create(body:{
      :id => @list_id,
      :email => {:email => params[:email][:address]}
      })
    
    
    
  end
  
end
