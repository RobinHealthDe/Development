class User < ActiveRecord::Base
  schema_associations

  devise(
    :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :trackable,
    :validatable,

    # Other available modules:
    #:confirmable,
    #:lockable,
    #:timeoutable,
    #:omniauthable
  )
end
