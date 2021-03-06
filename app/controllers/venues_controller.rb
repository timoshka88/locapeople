class VenuesController < ApplicationController
  # GET /venues
  # GET /venues.json
  def index
    # @venues = Venue.all

    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @venues }
    # end
      # if params[:search] && params[:distance] || (params[:bar] || params[:club] || params[:food] || params[:all])
      #   puts "++++++++++++++++++++++++++++"
      #   puts "In the search method of venues controller"
      #   @venues = Venue.search(params)
      #   p @venues
      #   render json: {:venues => @venues, :center_coords => {:lat=> @venues.first.lat, :lng=> @venues.first.lng} }
      # else
      #   @venues = Venue.all
      # end
  end

  # GET /venues/1
  # GET /venues/1.json

  # def detailed_info
  #   @detailed_venue_info = Venue.detailed_venue_info
  #   puts @detailed_venue_info
  # end

  def show


    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @venue }
    # end
  end



  # GET /venues/new
  # GET /venues/new.json
  def new
    @venue = Venue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @venue }
    end
  end

  # GET /venues/1/edit
  def edit
    @venue = Venue.find(params[:id])
  end

  # POST /venues
  # POST /venues.json
  def create

      @venue = Venue.create_with(params[:venue].permit(:lat,:lng)).find_or_create_by(params[:venue].permit(:place_id))
      
      respond_to do |format|
      if @venue.save
        format.html { redirect_to venues_path}
        format.json { render json: @venue, status: :created }
      end
    end

  end

  # PUT /venues/1
  # PUT /venues/1.json
  def update
    @venue = Venue.find(params[:id])

    respond_to do |format|
      if @venue.update_attributes(params[:venue])
        format.html { redirect_to @venue, notice: 'Venue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venues/1
  # DELETE /venues/1.json
  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy

    respond_to do |format|
      format.html { redirect_to venues_url }
      format.json { head :no_content }
    end
  end

  private

    def venue_params
      params.require(:venue).permit(:id, :name, :address, :email, :website, :phone, :alt_phone, :minimum_age, :description, :whats_cool, :tips_and_tricks, :outdoor_seating, :entrance_fee, :wheelchair_access, :gay_friendly, :owner_id, :lookup_parking_type_id, :lookup_city_id, {:lookup_venue_type_ids => []}, :lat, :lng, :place_id) 
    end

end
