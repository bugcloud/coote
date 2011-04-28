class TopController < ApplicationController
  def index
    @monos = Mono.order_by(:created_at.desc).paginate(:page => params[:page], :per_page => 5)
  end

end
