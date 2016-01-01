class UserEvent < ActiveRecord::Base

  belongs_to :user, class_name: 'Fae::User'
  belongs_to :event

end