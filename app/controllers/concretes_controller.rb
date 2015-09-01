class ConcretesController < ApplicationController
  def new
    @concrete = Concrete.new
  end

  def create
    render nothing: true
  end

  def edit
    @concrete = Concrete.find(params[:id])
  end

  def update
    render nothing: true
  end

  private

  def strong_params
    params.require(:concretes).permit(:mix_type, :color, :psi, :cost_per_yard)
  end

end
