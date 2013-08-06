class Review < ActiveRecord::Base
  attr_accessible :contents, :item_id, :restaurant_id

  belongs_to :user
  belongs_to :item

  validates :user_id, :restaurant_id,  :contents, :presence => true
  validate





  def one_vote_per_user_per_food
  	matched_review = Review.where(:user_id => self.user_id, :restaurant_id => self.restaurant_id)
  	if matched_review.empty? == false
  		errors.add(:one_review, "per user")
	end
end
end
