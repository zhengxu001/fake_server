class FakeApisController < ApplicationController
  before_action :set_fake_api, only: [:show, :edit, :update, :destroy]

  # GET /fake_apis
  # GET /fake_apis.json
  def index
    if user_signed_in?
      @fake_apis = FakeApi.where(user_id: current_user.id) || []
    else
      @fake_apis = FakeApi.all
    end
  end

  # GET /fake_apis/1
  # GET /fake_apis/1.json
  def show
  end

  # GET /fake_apis/new
  def new
    @fake_api = FakeApi.new
  end

  # GET /fake_apis/1/edit
  def edit
  end

  # POST /fake_apis
  # POST /fake_apis.json
  def create
    @fake_api = FakeApi.new(fake_api_params)
    if user_signed_in?
      @fake_api.user = current_user
    end
    respond_to do |format|
      if @fake_api.save
        format.html { redirect_to @fake_api, notice: 'Fake api was successfully created.' }
        format.json { render :show, status: :created, location: @fake_api }
      else
        format.html { render :new }
        format.json { render json: @fake_api.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fake_apis/1
  # PATCH/PUT /fake_apis/1.json
  def update
    respond_to do |format|
      if @fake_api.update(fake_api_params)
        format.html { redirect_to @fake_api, notice: 'Fake api was successfully updated.' }
        format.json { render :show, status: :ok, location: @fake_api }
      else
        format.html { render :edit }
        format.json { render json: @fake_api.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fake_apis/1
  # DELETE /fake_apis/1.json
  def destroy
    @fake_api.destroy
    respond_to do |format|
      format.html { redirect_to fake_apis_url, notice: 'Fake api was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def fake_api
    verb = request.request_method
    @api = FakeApi.find_by(method: verb.downcase, uri: params["path"])
    render json: @api.response
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fake_api
      @fake_api = FakeApi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fake_api_params
      prefix = current_user.try(:name) || "fake"
      params["fake_api"]["uri"] = File.join(prefix, params["fake_api"]["uri"]).sub(/^\//, '')
      params.require(:fake_api).permit(:method, :uri, :response)
    end
end
