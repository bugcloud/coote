class TopController < ApplicationController
  def index
    @monos = Mono.all.order_by(:created_at.desc)
  end

end
