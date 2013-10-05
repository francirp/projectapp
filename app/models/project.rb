class Project < ActiveRecord::Base
  attr_accessible :name, :tag_line, :team_id
end
