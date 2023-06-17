class ApplicationController < ActionController::API
  include ActionController::Cookies
  private

  def set_cors_headers
    response.headers['Access-Control-Allow-Origin'] = '*' # Replace '*' with the allowed origin(s) if needed
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, PATCH, DELETE, OPTIONS'
    response.headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    response.headers['Access-Control-Allow-Credentials'] = 'true' # Include this if your request includes credentials
  end

end
