class AdminController < ApplicationController
  USERS = { "admin" => "grenal" }
 
  before_filter :authenticate
 
  private
 
  def authenticate
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end
end
