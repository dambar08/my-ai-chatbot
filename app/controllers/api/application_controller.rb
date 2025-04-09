class Api::ApplicationController < ActionController::API
  respond_to :json

  include Authentication
  include Pundit::Authorization
end
