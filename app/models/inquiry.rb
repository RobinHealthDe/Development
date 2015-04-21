class Inquiry < ActiveRecord::Base
  schema_associations

  def to_s()
    return "Inquiry ##{id}"
  end
end
