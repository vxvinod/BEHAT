class BehatwebsController < ApplicationController
  # GET /behatwebs
  # GET /behatwebs.json
  def index
    @behatwebs = Behatweb.all
    @behatweb=Behatweb.last

    respond_to do |format|
      format.html  # index.html.erb
      format.json { render json: @behatwebs }
    end
  end

  # GET /behatwebs/1
  # GET /behatwebs/1.json
  def show
    @behatweb = Behatweb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @behatweb }
    end
  end

  # GET /behatwebs/new
  # GET /behatwebs/new.json
  def new
    @behatweb = Behatweb.new

    respond_to do |format|
      format.html { render :layout => 'default'} # new.html.erb
      format.json { render json: @behatweb   }
    end
  end

  # GET /behatwebs/1/edit
  def edit
    @behatweb = Behatweb.find(params[:id])
  end

  # POST /behatwebs
  # POST /behatwebs.json
  def create
    @behatweb = Behatweb.new(params[:behatweb])

    respond_to do |format|
     

      if @behatweb.save
        format.html { redirect_to @behatweb, notice: 'Behatweb was successfully created.' }
        format.json { render json: @behatweb, status: :created, location: @behatweb }
      else
        format.html { render action: "new" , :layout => 'default'}
        format.json { render json: @behatweb.errors, status: :unprocessable_entity ,action: "new"}
      end
    end
  end

  # PUT /behatwebs/1
  # PUT /behatwebs/1.json
  def update
    @behatweb = Behatweb.find(params[:id])

    respond_to do |format|
      if @behatweb.update_attributes(params[:behatweb])
        format.html { redirect_to @behatweb, notice: 'Behatweb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @behatweb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /behatwebs/1
  # DELETE /behatwebs/1.json
  def destroy
    @behatweb = Behatweb.find(params[:id])
    @behatweb.destroy

    respond_to do |format|
      format.html { redirect_to behatwebs_url }
      format.json { head :no_content }
    end
  end


  def userview
    @behatwebs = Behatweb.all
   

    respond_to do |format|
      format.html  
      format.json { render json: @behatwebs }
    end
  end
end
