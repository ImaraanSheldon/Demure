<template>
    <div class="admin-view">
      <h1>Admin Panel - Product Management</h1>
  
      <!-- Form to Add or Update a Product -->
      <div class="product-form">
        <h2>{{ isEditing ? 'Edit Product' : 'Add New Product' }}</h2>
        <form @submit.prevent="isEditing ? updateProduct() : addProduct()">
          <div class="form-group">
            <label for="prodName">Product Name</label>
            <input type="text" v-model="productForm.prodName" required />
          </div>
          <div class="form-group">
            <label for="quantity">Quantity</label>
            <input type="number" v-model="productForm.quantity" required />
          </div>
          <div class="form-group">
            <label for="amount">Price</label>
            <input type="number" v-model="productForm.amount" step="0.01" required />
          </div>
          <div class="form-group">
            <label for="Category">Category</label>
            <input type="text" v-model="productForm.Category" required />
          </div>
          <div class="form-group">
            <label for="prodUrl">Product Image URL</label>
            <input type="text" v-model="productForm.prodUrl" required />
          </div>
          <button type="submit">{{ isEditing ? 'Update Product' : 'Add Product' }}</button>
          <button v-if="isEditing" type="button" @click="cancelEdit">Cancel</button>
        </form>
      </div>
  
      <!-- Product List -->
      <div class="product-list">
        <h2>All Products</h2>
        <ul>
          <li v-for="product in products" :key="product.prodID">
            <span>{{ product.prodName }} - ${{ product.amount }}</span>
            <button @click="editProduct(product)">Edit</button>
            <button @click="deleteProduct(product.prodID)">Delete</button>
          </li>
        </ul>
      </div>
    </div>
  </template>
  
  <script>
  import { ref, computed, onMounted } from 'vue';
  import { useStore } from 'vuex';
  
  export default {
    setup() {
      const store = useStore();
      const productForm = ref({
        prodName: '',
        quantity: '',
        amount: '',
        Category: '',
        prodUrl: ''
      });
      const isEditing = ref(false);
      const editingProductId = ref(null);
  
      onMounted(() => {
        store.dispatch('fetchProducts');
      });
  
      const products = computed(() => store.getters.allProducts);
  
      const addProduct = async () => {
        await store.dispatch('addProduct', productForm.value);
        resetForm();
      };
  
      const editProduct = (product) => {
        productForm.value = { ...product };
        isEditing.value = true;
        editingProductId.value = product.prodID;
      };
  
      const updateProduct = async () => {
        await store.dispatch('updateProduct', { ...productForm.value, prodID: editingProductId.value });
        resetForm();
      };
  
      const deleteProduct = async (prodID) => {
        await store.dispatch('deleteProduct', prodID);
      };
  
      const cancelEdit = () => {
        resetForm();
      };
  
      const resetForm = () => {
        productForm.value = {
          prodName: '',
          quantity: '',
          amount: '',
          Category: '',
          prodUrl: ''
        };
        isEditing.value = false;
        editingProductId.value = null;
      };
  
      return {
        productForm,
        products,
        isEditing,
        addProduct,
        editProduct,
        updateProduct,
        deleteProduct,
        cancelEdit
      };
    }
  };
  </script>
  
  <style scoped>
  .admin-view {
    padding: 2rem;
    background-color: var(--light-grey-color);
  }
  
  .product-form {
    margin-bottom: 2rem;
  }
  
  .product-form h2 {
    margin-bottom: 1rem;
  }
  
  .form-group {
    margin-bottom: 1rem;
  }
  
  .form-group label {
    display: block;
    margin-bottom: 0.5rem;
  }
  
  .form-group input {
    width: 100%;
    padding: 0.5rem;
    box-sizing: border-box;
  }
  
  button {
    margin-right: 1rem;
    padding: 0.5rem 1rem;
    background-color: var(--brown-color);
    color: var(--white-color);
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color var(--transition);
  }
  
  button:hover {
    background-color: var(--dark-color);
  }
  
  .product-list ul {
    list-style-type: none;
    padding: 0;
  }
  
  .product-list li {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 0.5rem;
    padding: 0.5rem;
    background-color: var(--white-color);
    border: 1px solid var(--dark-grey-color);
    border-radius: 5px;
  }
  
  .product-list button {
    margin-left: 0.5rem;
  }
  </style>
  