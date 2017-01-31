#app/controllers/api/api_controller.rb
class Api::ApiController < ApplicationController
  skip_before_filter :verify_authenticity_token

  before_action :check_token
  private
  def check_token
    if Token.where(uid: request.headers["token"]).count == 0
      render json: {authorized: false, message: 'accès non autorisé'}, unauthorized: true
    end
  end
end