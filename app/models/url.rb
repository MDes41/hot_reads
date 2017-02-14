class Url < ActiveRecord::Base
  default_scope { order(status: :desc) }
end