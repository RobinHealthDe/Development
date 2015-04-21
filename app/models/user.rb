class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
  schema_associations

  devise(
    :database_authenticatable,
    
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
