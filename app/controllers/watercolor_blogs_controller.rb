class WatercolorBlogsController < ApplicationController
  before_action :set_watercolor_blog, only: %i[ show edit update destroy ]

  # GET /watercolor_blogs or /watercolor_blogs.json
  def index
    @watercolor_blogs = WatercolorBlog.all
  end

  # GET /watercolor_blogs/1 or /watercolor_blogs/1.json
  def show
  end

  # GET /watercolor_blogs/new
  def new
    @watercolor_blog = WatercolorBlog.new
  end

  # GET /watercolor_blogs/1/edit
  def edit
  end

  # POST /watercolor_blogs or /watercolor_blogs.json
  def create
    @watercolor_blog = WatercolorBlog.new(watercolor_blog_params)

    respond_to do |format|
      if @watercolor_blog.save
        format.html { redirect_to @watercolor_blog, notice: "Watercolor blog was successfully created." }
        format.json { render :show, status: :created, location: @watercolor_blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @watercolor_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watercolor_blogs/1 or /watercolor_blogs/1.json
  def update
    respond_to do |format|
      if @watercolor_blog.update(watercolor_blog_params)
        format.html { redirect_to @watercolor_blog, notice: "Watercolor blog was successfully updated." }
        format.json { render :show, status: :ok, location: @watercolor_blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @watercolor_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watercolor_blogs/1 or /watercolor_blogs/1.json
  def destroy
    @watercolor_blog.destroy
    respond_to do |format|
      format.html { redirect_to watercolor_blogs_url, notice: "Watercolor blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watercolor_blog
      @watercolor_blog = WatercolorBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def watercolor_blog_params
      params.require(:watercolor_blog).permit(:primarykey, :title, :description, :created)
    end
end
