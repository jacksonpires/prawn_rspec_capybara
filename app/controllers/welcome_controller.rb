class WelcomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.pdf
    end
  end
end
