class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :update, :destroy]

  # GET /packages
  # GET /packages.json
  def index
    @packages = Package.all

    render json: @packages
  end

  # GET /packages/1
  # GET /packages/1.json
  def show
    render json: @package
  end

  # POST /packages
  # POST /packages.json
  def create
    @package = Package.new(package_params)

    if @package.save
      render json: @package, status: :created, location: @package
    else
      render json: @package.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /packages/1
  # PATCH/PUT /packages/1.json
  def update
    @package = Package.find(params[:id])

    if @package.update(package_params)
      head :no_content
    else
      render json: @package.errors, status: :unprocessable_entity
    end
  end

  # DELETE /packages/1
  # DELETE /packages/1.json
  def destroy
    @package.destroy

    head :no_content
  end

  private

    def set_package
      @package = Package.find(params[:id])
    end

    def package_params
      params.require(:package).permit(:name)
    end
end