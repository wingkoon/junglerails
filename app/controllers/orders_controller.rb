<section class="products-show">
  <header class="page-header">
    <h1><%= link_to @product.category.name, @product.category %> &raquo; <%= @product.name %></h1>
  </header>

  <article class="product-detail">
    <%= image_tag @product.image.url, class: 'main-img' %>
    <div>
      <h1><%= @product.name %></h1>
      <p><%= @product.description %></p>
      <div class="quantity">
        <span><%= @product.quantity %> in stock at </span>
        <span>$<%= @product.price %></span>
      </div>
      <div class="price">

      <% if @product.quantity == 0 %>   
      <button class="btn btn-danger" style="background-color: #EE4266">Sold Out!</button>
      <% else %>       
        <%= button_to add_item_cart_path(product_id: @product.id), class: 'btn' , method: :post do %>
          <%= fa_icon "shopping-cart", text: 'Add' %>
        <% end %>  
        <% end %>         
      </div>
    </div>
  </article>

</section>
