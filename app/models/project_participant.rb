class ProjectParticipant < ActiveRecord::Base
  attr_accessible :project_id, :role, :user_id
end
