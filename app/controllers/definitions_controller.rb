class DefinitionsController < ApplicationController
  skip_before_action :authorized_user
  def index
    render json: Definition.all, status: :ok
  end
end
