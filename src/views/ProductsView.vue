<template>
    <div class="products-view">
      <h1>Products</h1>
      <div class="products-grid">
        <div v-for="product in products" :key="product.prodID" class="product-card">
          <img :src="product.prodUrl" :alt="product.prodName" class="product-image" />
          <div class="product-details">
            <h2 class="product-name">{{ product.prodName }}</h2>
            <p class="product-category">{{ product.Category }}</p>
            <p class="product-quantity">Quantity: {{ product.quantity }}</p>
            <p class="product-amount">${{ product.amount }}</p>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  import { computed, onMounted } from 'vue';
  import { useStore } from 'vuex';
  
  export default {
    setup() {
      const store = useStore();
  
      onMounted(() => {
        store.dispatch('fetchProducts');
      });
  
      const products = computed(() => store.getters.allProducts);
  
      return {
        products,
      };
    },
  };
  </script>
  
  <style scoped>
  .products-view {
    padding: 2rem;
    background-color: var(--light-grey-color);
  }
  
  .products-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 1rem;
  }
  
  .product-card {
    background-color: var(--white-color);
    border-radius: 8px;
    box-shadow: var(--box-shadow);
    overflow: hidden;
    transition: transform 0.3s ease;
  }
  
  .product-card:hover {
    transform: scale(1.02);
  }
  
  .product-image {
    width: 100%;
    height: 200px;
    object-fit: cover;
  }
  
  .product-details {
    padding: 1rem;
  }
  
  .product-name {
    font-size: 1.2rem;
    margin-bottom: 0.5rem;
  }
  
  .product-category,
  .product-quantity,
  .product-amount {
    margin: 0.25rem 0;
  }
  </style>
  