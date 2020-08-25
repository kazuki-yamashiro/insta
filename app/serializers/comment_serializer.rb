# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  commentable_type :string
#  content          :text             not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  post_id          :integer          not null
#  user_id          :integer          not null
#
# Indexes
#
#  index_comments_on_post_id  (post_id)
#  index_comments_on_user_id  (user_id)
#
class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :reply_id

  belongs_to :user
  belongs_to :post
end
