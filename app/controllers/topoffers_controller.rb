class TopoffersController < ApplicationController

  layout 'lp'
  
  before_filter :set_tracking

  def prepaid_a0
  	@page="0010"
  end
end