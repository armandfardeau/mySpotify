class Api::TokensController < Api::ApiController
  
  def create
    @token = Token.create(token_params)
    # Token.create({uid: "toto"})
    render json: {token: @token.uid}
  end
  
  private
    def token_params
      params.require(:token).permit(:uid)
    end
end
