class Post < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    
    validates :title, presence: true, length: { maximum: 30 }
    
    validates :text, presence: true
    
end
