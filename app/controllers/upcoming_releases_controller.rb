class UpcomingReleasesController < ApplicationController
  # GET /upcoming_releases
  # GET /upcoming_releases.json
  def index
    @upcoming_releases = UpcomingRelease.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @upcoming_releases }
    end
  end

  # GET /upcoming_releases/1
  # GET /upcoming_releases/1.json
  def show
    @upcoming_release = UpcomingRelease.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @upcoming_release }
    end
  end

  # GET /upcoming_releases/new
  # GET /upcoming_releases/new.json
  def new
    @upcoming_release = UpcomingRelease.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @upcoming_release }
    end
  end

  # GET /upcoming_releases/1/edit
  def edit
    @upcoming_release = UpcomingRelease.find(params[:id])
  end

  # POST /upcoming_releases
  # POST /upcoming_releases.json
  def create
    releaseId = params[:upcoming_release].delete :release

    @upcoming_release = UpcomingRelease.new(params[:upcoming_release])
    @upcoming_release.release = Release.find(releaseId)

    respond_to do |format|
      if @upcoming_release.save
        format.html { redirect_to @upcoming_release, notice: 'Upcoming release was successfully created.' }
        format.json { render json: @upcoming_release, status: :created, location: @upcoming_release }
      else
        format.html { render action: "new" }
        format.json { render json: @upcoming_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /upcoming_releases/1
  # PUT /upcoming_releases/1.json
  def update
    @upcoming_release = UpcomingRelease.find(params[:id])

    respond_to do |format|
      if @upcoming_release.update_attributes(params[:upcoming_release])
        format.html { redirect_to @upcoming_release, notice: 'Upcoming release was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @upcoming_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upcoming_releases/1
  # DELETE /upcoming_releases/1.json
  def destroy
    @upcoming_release = UpcomingRelease.find(params[:id])
    @upcoming_release.destroy

    respond_to do |format|
      format.html { redirect_to upcoming_releases_url }
      format.json { head :no_content }
    end
  end
end
