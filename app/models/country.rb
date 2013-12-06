class Country < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  has_many :players
end
