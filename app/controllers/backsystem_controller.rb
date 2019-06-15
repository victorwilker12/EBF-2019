class BacksystemController < ApplicationController
  layout 'base/home'
  before_action :authenticate_user!
  def index
  end
end
