class Orderlist < ApplicationRecord
  belongs_to :pizza
  belongs_to :order

  validates :size, presence: true

  before_save :multipler

  enum size: { small: 1, medium: 2, large: 3 }

  after_save :refresh_order

  def multipler
    if (self.size == 'large')
      self.price = self.pizza.price * 3
    elsif  (self.size == 'medium')
      self.price = self.pizza.price * 2
    else
      self.price = self.pizza.price
    end   
      puts 'inside multipler'
  end

  def refresh_order
    self.order.refresh
  end
end
  