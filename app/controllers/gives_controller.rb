class GivesController < ApplicationController
  # GET /gives
  # GET /gives.json
  def index
    @gives = Give.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gives }
    end
  end

  # GET /gives/1
  # GET /gives/1.json
  def show
    @gife = Give.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gife }
    end
  end

  # GET /gives/new
  # GET /gives/new.json
  def new
    @gife = Give.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gife }
    end
  end

  # GET /gives/1/edit
  def edit
    @gife = Give.find(params[:id])
  end

  # POST /gives
  # POST /gives.json
  def create
    @gife = Give.new(params[:gife])

    respond_to do |format|
      if @gife.save
        format.html { redirect_to 'http://www.justgiving.com/donation/direct/charity/221163?amount=2&exitUrl=http://hack.damiena.com/thanks', notice: 'Give was successfully created.' }
        format.json { render json: @gife, status: :created, location: @gife }
      else
        format.html { render action: "new" }
        format.json { render json: @gife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gives/1
  # PUT /gives/1.json
  def update
    @gife = Give.find(params[:id])

    respond_to do |format|
      if @gife.update_attributes(params[:gife])
        format.html { redirect_to @gife, notice: 'Give was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gives/1
  # DELETE /gives/1.json
  def destroy
    @gife = Give.find(params[:id])
    @gife.destroy

    respond_to do |format|
      format.html { redirect_to gives_url }
      format.json { head :no_content }
    end
  end
end
