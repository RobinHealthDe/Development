class Patient < ActiveRecord::Base
  schema_associations

  def to_s()
    return contact_info.to_s
  end
end
