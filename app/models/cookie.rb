class Cookie < ActiveRecord::Base
  belongs_to :storage, polymorphic: :true
  
  validates :storage, presence: true

  def filling_words
    fillings.blank? ? "no fillings" : fillings
  end
  
  def ready?
    baked ?  "It's still baking! Wait for it to be done." : "(Your Cookie is Ready)"
  end
end
