class Event < ActiveRecord::Base
  validates :title, :location, :date, :time, :owner_id, :presence => true

  has_many :chats

  belongs_to(
    :owner,
    class_name: "User",
    foreign_key: :owner,
    primary_key: :id,
  )
end
