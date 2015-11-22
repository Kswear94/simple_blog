class Post < ActiveRecord::Base
    validates :title, presence: true, length: { maximum: 30 }
    
    validates :text, presence: true
    
end
