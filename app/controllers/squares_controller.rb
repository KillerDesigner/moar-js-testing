class SquaresController < ApplicationController
  def index
    @squares = Square.all
  end
end
