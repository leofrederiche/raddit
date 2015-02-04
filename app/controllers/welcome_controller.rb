class WelcomeController < ApplicationController

  def index
    @links = Link.all.reverse
  end

end