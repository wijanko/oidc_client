class OidcClientsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def index
  end

  def authorize
    # GET does not work, so we use POST in the root path
    redirect_to '/auth/afri'
  end

  def callback
    debugger
    auth = request.env['omniauth.auth']
  end

  def failure
    debugger
  end
end
