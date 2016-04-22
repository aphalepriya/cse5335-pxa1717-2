class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    if params[:id]
      @users = User.where('id >?', params[:id]).limit(1).where('code > ?', '100200')
    else
      @users = User.where('code > ?', '100200').limit(1)
    end
    respond_to do |format|
      format.html
      format.js
    end
  end
end