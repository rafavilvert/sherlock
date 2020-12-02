class CountController < ApplicationController
  def index
    request_error_flag if ENV['ERROR_FLAG'] == "enable"
    request_sum
  end

  def reset
    request_reset
  end

  private

  def request_sum
    $count ||= 0
    $count += 1
  end

  def request_reset
    $count = 0
  end

  def request_error_flag
    $count_error ||= 0
    $count_error += 1

    if $count_error >= ENV['ERROR_OFTEN'].to_i
      render :body => "Internal Server Error", :status => :internal_server_error
      $count_error = 0
    end
  end

end


