class AspectLinksController < ApplicationController
  # GET /aspect_links
  # GET /aspect_links.json
  def index
    @aspect_links = AspectLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aspect_links }
    end
  end

  # GET /aspect_links/1
  # GET /aspect_links/1.json
  def show
    @aspect_link = AspectLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aspect_link }
    end
  end

  # GET /aspect_links/new
  # GET /aspect_links/new.json
  def new
    @aspect_link = AspectLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aspect_link }
    end
  end

  # GET /aspect_links/1/edit
  def edit
    @aspect_link = AspectLink.find(params[:id])
  end

  # POST /aspect_links
  # POST /aspect_links.json
  def create
    @aspect_link = AspectLink.new(params[:aspect_link])

    respond_to do |format|
      if @aspect_link.save
        format.html { redirect_to :back, notice: 'Aspect link was successfully created.' }
        format.json { render json: @aspect_link, status: :created, location: @aspect_link }
      else
        format.html { render action: "new" }
        format.json { render json: @aspect_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aspect_links/1
  # PUT /aspect_links/1.json
  def update
    @aspect_link = AspectLink.find(params[:id])

    respond_to do |format|
      if @aspect_link.update_attributes(params[:aspect_link])
        format.html { redirect_to @aspect_link, notice: 'Aspect link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aspect_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aspect_links/1
  # DELETE /aspect_links/1.json
  def destroy
    @aspect_link = AspectLink.find(params[:id])
    @aspect_link.destroy

    respond_to do |format|
      format.html { redirect_to aspect_links_url }
      format.json { head :no_content }
    end
  end
end
