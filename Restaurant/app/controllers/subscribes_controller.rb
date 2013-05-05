class SubscribesController < ApplicationController

  def index
    @subscribes = Subscribe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subscribes }
    end
  end
  
  def edit
    @subscribe = Subscribe.find(params[:id])
  end
  
  def update
    @subscribe = Subscribe.find(params[:id])

    respond_to do |format|
      if @subscribe.update_attributes(params[:subscribe])
        format.html { redirect_to @subscribe, notice: 'Subscribe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subscribe.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @subscribe = Subscribe.find(params[:id])
    @subscribe.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
  
  def show
    @subscribe = Subscribe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subscribe }
    end
  end
  
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
