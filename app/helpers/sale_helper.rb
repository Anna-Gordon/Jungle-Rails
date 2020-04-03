module SaleHelper

  def active_sale?
    Sale.active.any?
  end
end 