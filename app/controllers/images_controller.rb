class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      flash[:success] = I18n.t('flash.success')
      redirect_to @image
    else
      flash[:error] = @image.errors.full_messages.join(', ') 
      redirect_to  new_image_path
    end
  end
  
  

  def show
    @image = Image.find(params[:id])
  end

  private

  def image_params
    params.require(:image).permit(:title, :description, :file)
  end
end
