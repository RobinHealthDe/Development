class ContactInfo < ActiveRecord::Base
  schema_associations

  def to_s()
    return "#{first_name} #{last_name} (#{email})"
  end
end
