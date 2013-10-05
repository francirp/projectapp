class Post < ActiveRecord::Base
  attr_accessible :date, :description, :project_id, :title
end
