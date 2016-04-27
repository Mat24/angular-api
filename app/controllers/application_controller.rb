class ApplicationController < ActionController::API
  after_action :cors_set_access_control_headers

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS, DELETE'
    headers['Access-Control-Max-Age'] = "1728000"
  end
end
