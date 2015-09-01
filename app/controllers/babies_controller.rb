class BabiesController < ApplicationController
  def new
    @baby = Baby.new
    #does rails know to render new.html.erb here?
  end

  def create
    # @baby = Baby.create(baby_params)
    #new--> visits the form with the name on it; create is the post request that redirects
    render nothing: true
    # redirect_to :back
  end

  def edit
    @baby = Baby.find(params[:id])
    #calling to get the page that renders the form
  end

  def update
    render nothing: true
    #code that gets run once we submit the form, usually ends in a redirect
  end

private

  def baby_params
    params.require(:baby).permit(:first_name, :last_name, :weight, :birth_date)
    #mass assign these parameters into model object
    #rails won't allow mass assignment outside of strong parameters
  end
end
