class IdeasController < ApplicationController
  
  def index 
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new 
    @idea = Idea.new
  end

  def create
    # save to the database
    p params
    @idea = Idea.new idea_params

    if @idea.save
      flash[:success] = "Idea created successfully"
      redirect_to ideas_path
    else
      flash.now[:alert] = "Idea not saved"
    end
  end

  private

  def idea_params
    idea_params = params.require(:idea).permit(:title, :body)
  end
end
