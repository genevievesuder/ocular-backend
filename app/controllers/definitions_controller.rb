class DefinitionsController < ApplicationController

  def index
    render json: Definition.all, status: :ok
  end
end
