class Product < ApplicationRecord

    validates :title, presence: true
    validates :description,  presence: true, length: {minimum: 3}
    validates :image_url, presence: true
    validates_numericality_of :price, :greater_than_or_equal_to => 0.01
    validates :image_url, allow_blank: true, format: { 
        with: %r{\.(gif\jpg\png)\z}i,
        message: 'must be a URL for GIF, JPG or PNG.'
     }

end
