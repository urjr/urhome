class PhotosController < ApplicationController
  before_action :set_project

  # GET /photos
  # GET /photos.json
  def index
    @photos = @project.photos.all
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = @project.photos.find(params[:id])
  end

  # GET /photos/new
  def new
    @photo = @project.photos.new
  end

  # GET /photos/1/edit
  def edit
    @photo = @project.photos.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = @project.photos.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to project_path(@project), notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @project.photos.update(photo_params)
        format.html { redirect_to project_path(@project), notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy

    @photo = @project.photos.find(params[:id])

    @photo.destroy
    respond_to do |format|
      format.html { redirect_to project_path(@project), notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:caption, :project_id, :image)
    end
end
