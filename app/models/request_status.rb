class RequestStatus < ActiveRecord::Base
  has_paper_trail

  attr_accessible :display_name, :name
end
