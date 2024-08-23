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
        <div class="form-actions">
          <button type="submit">{{ isEditing ? 'Update Product' : 'Add Product' }}</button>
          <button v-if="isEditing" type="button" @click="cancelEdit">Cancel</button>
        </div>
      </form>
    </div>

    <!-- Product List -->
    <div class="product-list">
      <h2>All Products</h2>
      <div v-if="products.length">
        <div v-for="product in products" :key="product.prodID" class="product-card">
          <div class="product-info">
            <h3>{{ product.prodName }}</h3>
            <p><strong>Category:</strong> {{ product.Category }}</p>
            <p><strong>Quantity:</strong> {{ product.quantity }}</p>
            <p><strong>Price:</strong> ${{ product.amount }}</p>
          </div>
          <div class="product-actions">
            <button @click="editProduct(product)">Edit</button>
            <button @click="deleteProduct(product.prodID)">Delete</button>
          </div>
        </div>
      </div>
      <div v-else>
        <p>No products available.</p>
      </div>
    </div>
  </div>
</template>

<script>
import { ref, computed, onMounted } from 'vue';
import { useStore } from 'vuex';
import sweet from 'sweetalert'; // Importing sweetalert

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
      sweet("Product Added!", "The product has been successfully added.", "success");
    };

    const editProduct = (product) => {
      productForm.value = { ...product };
      isEditing.value = true;
      editingProductId.value = product.prodID;
    };

    const updateProduct = async () => {
      await store.dispatch('updateProduct', { ...productForm.value, prodID: editingProductId.value });
      resetForm();
      sweet("Product Updated!", "The product has been successfully updated.", "success");
    };

    const deleteProduct =  (prodID) => {
      console.log(prodID);
      
       store.dispatch('deleteProduct', prodID);
      
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
  max-width: 800px;
  margin: auto;
  background-color: var(--light-grey-color);
  border-radius: 8px;
  box-shadow: var(--box-shadow);
}

h1, h2 {
  text-align: center;
  color: var(--dark-color);
}

.product-form {
  margin-bottom: 2rem;
  padding: 1rem;
  background-color: var(--white-color);
  border-radius: 8px;
  box-shadow: var(--box-shadow);
}

.form-group {
  margin-bottom: 1rem;
}

.form-group label {
  display: block;
  margin-bottom: 0.5rem;
  color: var(--dark-grey-color);
}

.form-group input {
  width: 100%;
  padding: 0.5rem;
  border: 1px solid var(--dark-grey-color);
  border-radius: 4px;
  box-sizing: border-box;
}

.form-actions {
  display: flex;
  justify-content: flex-end;
  margin-top: 1rem;
}

button {
  padding: 0.5rem 1rem;
  margin-left: 0.5rem;
  background-color: var(--brown-color);
  color: var(--white-color);
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color var(--transition);
}

button:disabled {
  background-color: var(--dark-grey-color);
  cursor: not-allowed;
}

button:hover:enabled {
  background-color: var(--dark-color);
}

.product-list {
  margin-top: 2rem;
}

.product-card {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem;
  margin-bottom: 1rem;
  background-color: var(--white-color);
  border: 1px solid var(--dark-grey-color);
  border-radius: 8px;
  box-shadow: var(--box-shadow);
}

.product-info h3 {
  margin: 0 0 0.5rem;
  color: var(--dark-color);
}

.product-actions button {
  margin-left: 0.5rem;
}

@media (max-width: 768px) {
  .product-card {
    flex-direction: column;
    align-items: flex-start;
  }

  .product-actions {
    margin-top: 1rem;
    width: 100%;
    display: flex;
    justify-content: space-around;
  }
}
</style>
