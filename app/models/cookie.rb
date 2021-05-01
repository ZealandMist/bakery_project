class Cookie < ActiveRecord::Base
  belongs_to :storage, polymorphic: :true
  
  validates :storage, presence: true

  def filling_words
    fillings.blank? ? "no fillings" : fillings
  end
  
  def ready?
    true
  end
end
