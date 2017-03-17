class PagesController < ApplicationController
  def index
    @ribbits = Ribbit.all
  end
end
