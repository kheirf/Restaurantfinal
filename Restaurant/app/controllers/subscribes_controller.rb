class SubscribesController < ApplicationController

  def new
    @subscribe = Subscribe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subscribe }
    end
  end
  
  def create
    @subscribe = Subscribe.new(params[:subscribe])
    
    respond_to do |format|
      if @subscribe.save
          format.html { redirect_to @subscribe, notice: 'Subscription was successfully created.' }
          format.json { render json: @subscribe, status: :created, location: @subscribe }
      else
        format.html { render action: "new" }
        format.json { render json: @subscribe.errors, status: :unprocessable_entity }
      end
    end
  end

end
