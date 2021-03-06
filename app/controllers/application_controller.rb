class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

  def set_tracking
  	!params[:src].nil? ? session[:src] = params[:src] : session[:src] = session[:src]
    !params[:cpg].nil? ? session[:cpg] = params[:cpg] : session[:cpg] = session[:cpg]
    !params[:adg].nil? ? session[:adg] = params[:adg] : session[:adg] = session[:adg]
    !params[:k].nil? ? session[:k] = params[:k] : session[:k] = session[:k]
    !params[:p].nil? ? session[:p] = params[:p] : session[:p] = session[:p]
    !params[:c].nil? ? session[:c] = params[:c] : session[:c] = session[:c]
  end

  def set_secured_constants
    @pur_balance =  500.0 #revolving purchase balance
    @cash_balance = 0.0 #cash balance balance
    @duration = 8.0  #number of months someone keeps the secured car, ad decimal so not integer  
  end
  
  def set_prepaid_constants

    @atm_owner_fee = 2.50 #fee charged by ATM owners

    @direct_dep = false  #true -- has direct depoist. Values: true or false, case doesn't matter
    @wkly_trans = 8  #number of signature transactions
    @wkly_atm_in_net = 1 #number of atm in network cash withdrawels
    @wkly_atm_out_net = 0 #number of atm out of network cash withdrawals 
    @mthly_load =  1000 #average cash loaded to card
    @mthly_loads = 0 #number of loads
    @wkly_atm_inq = 0 #number of atm balance inquiries
    @calls = 0 #live customer service per month 
    @prepaid_duration = 24 #numner of months keeping the card  

    @max_wkly_purchase = 20
    @max_wkly_atm_in_net = 10 #number of atm cash withdrawels
    @max_wkly_atm_out_net = 10 #number of atm cash withdrawels    
    @max_mthly_load = 4000 # total amount of cash loaded onto card
    @max_mthly_loads = 8 #number of loads
    @max_wkly_atm_inq = 10 #number of atm balance inquiries
    @max_calls = 10 #number of calls to customer service per month
    @max_prepaid_duration = 48 #length of ownership

  end
   
end
