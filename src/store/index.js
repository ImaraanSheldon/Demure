import { createStore } from 'vuex';
import axios from 'axios';

export default createStore({
  state: {
    products: [],
    product: null, // To store a single product
  },
  getters: {
    allProducts: (state) => state.products,
    productById: (state) => (id) => state.products.find((product) => product.prodID === id),
  },
  mutations: {
    setProducts(state, products) {
      state.products = products;
    },
    setProduct(state, product) {
      state.product = product;
    },
    addProduct(state, product) {
      state.products.push(product);
    },
    updateProduct(state, updatedProduct) {
      const index = state.products.findIndex((product) => product.prodID === updatedProduct.prodID);
      if (index !== -1) {
        state.products.splice(index, 1, updatedProduct);
      }
    },
    deleteProduct(state, prodID) {
      state.products = state.products.filter((product) => product.prodID !== prodID);
    },
  },
  actions: {
    async fetchProducts({ commit }) {
      try {
        const response = await axios.get('https://demure-1.onrender.com/product');
        if (response.status === 200) {
          commit('setProducts', response.data.results);
        } else {
          console.error('Failed to fetch products:', response.statusText);
        }
      } catch (error) {
        console.error('Error fetching products:', error);
      }
    },

    async fetchProductById({ commit }, prodID) {
      try {
        const response = await axios.get(`https://demure-1.onrender.com/product/${prodID}`);
        if (response.status === 200) {
          commit('setProduct', response.data);
        } else {
          console.error('Failed to fetch product:', response.statusText);
        }
      } catch (error) {
        console.error('Error fetching product:', error);
      }
    },

    async addProduct({ commit }, productData) {
      try {
        const response = await axios.post('https://demure-1.onrender.com/product/add', productData);
        if (response.status === 201) {
          commit('addProduct', response.data);
        } else {
          console.error('Failed to add product:', response.statusText);
        }
      } catch (error) {
        console.error('Error adding product:', error);
      }
    },

    async updateProduct({ commit }, { prodID, productData }) {
      try {
        const response = await axios.patch(`https://demure-1.onrender.com/product/${prodID}`, productData);
        if (response.status === 200) {
          commit('updateProduct', response.data);
        } else {
          console.error('Failed to update product:', response.statusText);
        }
      } catch (error) {
        console.error('Error updating product:', error);
      }
    },

    async deleteProduct({ commit }, prodID) {
      try {
        const response = await axios.delete(`https://demure-1.onrender.com/product/${prodID}`);
        if (response.status === 204) {
          commit('deleteProduct', prodID);
        } else {
          console.error('Failed to delete product:', response.statusText);
        }
      } catch (error) {
        console.error('Error deleting product:', error);
      }
    },
  },
  modules: {
    // Add any additional modules here
  },
});
