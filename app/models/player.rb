class Player < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  belongs_to :country
end
