module Api
  class ApiController < ApplicationController
    before_action :require_login
  end
end
