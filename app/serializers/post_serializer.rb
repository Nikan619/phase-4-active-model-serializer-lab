class PostSerializer < ActiveModel::Serializer
  attributes :title,:content
has_one :author
  has_many :tags 

  def short_content
      "#{self.object.content[0..39]}..."
    end

end
