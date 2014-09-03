class Chat < ActiveRecord::Base
  validates :text, :user_id, presence: true
  validates :type, inclusion: [:school, :fun]
  
  belongs_to :user

end
