class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content
  has_many :tags
  has_many :post_tags
  belongs_to :author

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
