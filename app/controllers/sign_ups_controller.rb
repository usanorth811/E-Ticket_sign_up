class SignUpsController < ApplicationController
  before_action :set_sign_up, only: [:show, :edit, :update, :destroy]

  # GET /sign_ups
  # GET /sign_ups.json
  def index
    @sign_ups = SignUp.all
  end

  # GET /sign_ups/1
  # GET /sign_ups/1.json
  def show
  end

  # GET /sign_ups/new
  def new
    @sign_up = SignUp.new

  end

  # GET /sign_ups/1/edit
  def edit
  end

  # POST /sign_ups
  # POST /sign_ups.json
  def create
    @sign_up = SignUp.new(sign_up_params)
    @sign_up[:user_name] = @sign_up[:first_name][0,3]+@sign_up[:last_name][0,3]+SecureRandom.hex(2)
    respond_to do |format|
      if @sign_up.valid?
      #if @sign_up.save
        require 'open-uri'
        require'net/https'
        #url = URI.parse('https://MY_URL')
        #request = Net::HTTP::Post.new(url.path)
        #response = Net::HTTP.start(url.host,url.port){|http| http.request(request)}
        #req.form_data = data
        #req.basic_auth url.user, url.password if url.user
        #con =Net::HTTP.new(url.host, url.port)
        #con.use_SSL = true
        #con.start {|http| http.request(req)}
        format.html { redirect_to root_url, notice: 'New User was successfully created' }
        format.json { render :show, status: :created, location: @sign_up }
      else
        format.html { render :new }
        format.json { render json: @sign_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sign_ups/1
  # PATCH/PUT /sign_ups/1.json
  def update
    respond_to do |format|
      if @sign_up.update(sign_up_params)
        format.html { redirect_to @sign_up, notice: 'Sign up was successfully updated.' }
        format.json { render :show, status: :ok, location: @sign_up }
      else
        format.html { render :edit }
        format.json { render json: @sign_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sign_ups/1
  # DELETE /sign_ups/1.json
  def destroy
    @sign_up.destroy
    respond_to do |format|
      format.html { redirect_to sign_ups_url, notice: 'Sign up was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sign_up
      @sign_up = SignUp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sign_up_params
      params.require(:sign_up).permit(:first_name, :last_name, :email, :company_name, :company_mailing_address, :city, :state, :zip, :company_phone_number, :password, :password_confirmation, :company_type, :user_name)
    end
end
