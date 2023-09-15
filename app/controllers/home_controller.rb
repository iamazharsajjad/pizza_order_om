class HomeController < ApplicationController
  def index
    @Pizzas = Pizza.all
  end
end
