module LikesHelper
  def likes_count(review)
    Like.where("review_id = #{review.id}").size
  end


end
