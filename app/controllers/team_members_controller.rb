class TeamMembersController < ApplicationController

  def new
    @team_member = TeamMember.new
    @team_member.team_id = params[:team_id]
  end

  def show
    @team_member = TeamMember.find_by_id(params[:id])
  end

  def edit
    @team_member = TeamMember.find_by_id(params[:id])
  end

  def index
    @team = Team.find_by_id(params[:team_id])
    @team_members = team.team_members
  end

  def create
    @team = Team.find_by_id(params[:team_id])
    @team_member = Team.new(params[:team_member])
    @team_member.team_id = @team.id

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
