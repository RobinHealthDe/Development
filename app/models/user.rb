class User < ActiveRecord::Base
  schema_associations

  devise(
    :database_authenticatable,
    :recoverable,
    :rememberable,
    :trackable,
    :validatable,

    # Disabled by ActiveAdmin
    #:registerable

    # Other available modules:
    #:confirmable,
    #:lockable,
    #:timeoutable,
    #:omniauthable
  )
end
