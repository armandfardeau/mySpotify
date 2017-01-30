#app/controllers/api/api_controller.rb
class Api::ApiController < ApplicationController
  skip_before_filter :verify_authenticity_token
end