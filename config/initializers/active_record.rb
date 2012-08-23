class ActiveRecord::Base
  @@models = []

#  def self.inherited sub_class
#    @@models << sub_class
#  end

  # TODO: Currently only lists models with active records because of use of descendants
  def self.models
    ActiveRecord::Base.descendants.each do |m|
      @@models << m.name
    end
    @@models
  end

end