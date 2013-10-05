class TeamsController < ApplicationController

  def new
    @team = Team.new
  end

  def show
    @team = Team.find_by_id(params[:id])
  end

  def edit
    @team = Team.find_by_id(params[:id])
  end

  def index
    @teams = current_user.teams
  end

  def create
    @team = Team.new(params[:team])
    @team.user_id = current_user.id

    if @team.save
      redirect_to @team, :notice => "Team successfully created."
    else
      render 'new'
    end
  end

  def update
    @team = Team.find_by_id(params[:id])

    if @team.update_attributes(params[:team])
      redirect_to @team, :notice => "Team wass successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    @team = Team.find_by_id(params[:id])
    @team.destroy
    redirect_to current_user
  end

end
