class UsersController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :destroy]
end
def index
end