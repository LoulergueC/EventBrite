class AdminController < ApplicationController
  before_action :authenticate_user! && :is_admin?, only: [:index]
  
  def index
    
  end

  def is_admin?
    if current_user.is_admin?
      return true
    end
  end
end
