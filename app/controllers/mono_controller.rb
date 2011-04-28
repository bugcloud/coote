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
    @comment = Comment.new
    render :layout => false
  end

  def create_comment
    @mono = Mono.find(params[:id])
    comment = Comment.new(params[:comment])
    @mono.comments << comment
    @mono.save
  end
end
