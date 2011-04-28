class MonoController < ApplicationController
  def new
    @mono = Mono.new
  end

  def create
    @mono = Mono.new(params[:mono])
    @mono.status = 0
    if @mono.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    redirect_to root_path
  end

  def new_comment
    render :text => "pending"
  end

  def create_comment
    render :text => "pending"
  end
end
