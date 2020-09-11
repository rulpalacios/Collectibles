class FiguresController < ApplicationController
  def index
    @pagy, @figures = pagy(Figure.all)
  end

  def show
    @figure = Figure.find params[:id]
  end

  def new
    @figure = Figure.new
  end

  def create
    @figure = current_user.figures.new figure_params
    if @figure.save
      return redirect_to root_url, notice: 'Figure created!'
    end

    render :new
  end

  def edit
  end

  def update
  end

  private

  def figure_params
    params.require(:figure).permit(:name, :year, :brand, :photo)
  end
end
