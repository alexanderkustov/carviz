class CarsController < ApplicationController
  # GET /cars
  # GET /cars.json
  def index
    #este index sera o geral para todos os carros, ou temos que ter um user cars...
    @cars = User.find(params[:user_id]).cars

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cars }
    end
  end

  def all_cars
    @cars = Car.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cars }
    end
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    @car = Car.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car }
    end
  end

  # GET /cars/new
  # GET /cars/new.json
  def new
    @car = Car.new
    @user = current_user
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car }
    end

  end

  # GET /cars/1/edit
  def edit
    @car = Car.find(params[:id])
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = current_user.cars.build(params[:car])
    respond_to do |format|
      if @car.save
        format.html { redirect_to [@car.user, @car], notice: 'Car was successfully created.' }
        format.json { render json: [@car.user, @car], status: :created, location: @car }
      else
        format.html { render action: "new" }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cars/1
  # PUT /cars/1.json
  def update
    @car = Car.find(params[:id])

    respond_to do |format|
      if @car.update_attributes(params[:car])
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    respond_to do |format|
      format.html { redirect_to user_cars_url }
      format.json { head :no_content }
    end
  end
end