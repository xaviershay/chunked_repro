class ApplicationController < ActionController::Base
  def testing
    render json: params
  end
end
