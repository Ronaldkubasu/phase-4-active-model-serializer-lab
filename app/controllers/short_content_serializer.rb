class ShortContentSerializer < ActiveModel::Serializer
    belongs_to :authors
    attributes :short_content
    
    def short_content
        "#{self.content[0..39]}..."
    end
end