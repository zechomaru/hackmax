class Reserve < ActiveRecord::Base
  belongs_to :show
  belongs_to :seat
end
