module CurrentCart

    private

    def set_cart
        @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
        @cart = Cart.createsesion[:cart_id] = @cart.id
    end
end