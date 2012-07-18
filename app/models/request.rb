class Request < ActiveRecord::Base
  has_paper_trail

  attr_accessible :affiliation_id, :class_id, :department_id, :description, :email, :expires, :firstname, :gid, :lastname, :node_hours, :phone, :request_status_id, :uid
end
