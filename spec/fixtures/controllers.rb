class TestController < ActionController::Base
  include Rails.application.routes.url_helpers
end

class MobilesController < TestController
  def index
    render nothing: true
  end
end
