class SleepController < ApplicationController
  def index
    @sleep = params[:sleep].to_i  
    sleep @sleep      
  end

end

