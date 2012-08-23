class NodeIncident < ActiveRecord::Base
  has_paper_trail

  attr_accessible :action, :description
end
