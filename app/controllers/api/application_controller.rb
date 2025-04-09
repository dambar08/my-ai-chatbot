require "api/application_responder"
class Api::ApplicationController < ActionController::API
  self.responder = Api::ApplicationResponder
  include ActionController::MimeResponds
  include ActionController::HttpAuthentication::Token::ControllerMethods

  respond_to :json

  # include ApiAuthentication
  include Pundit::Authorization

  before_action :ensure_json_request

  def ensure_json_request
    render nothing: true, status: 406 unless request.format == :json
  end
end
