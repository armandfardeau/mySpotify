class Api::TokensController < Api::ApiController

  skip_before_action :check_token, only: :create

  def create
    @token = Token.find_or_create_by(token_params)
    render json: {token: @token.uid, token_count: Token.count}
  end

  private
  def token_params
    params.require(:token).permit(:email)
  end
end