<template>
    <div class="container-fluid" id="Products">
        <div class="search container">
            <input type="text" name="search" v-model="search" @input="searchProd()" id="searchBar" placeholder="Name/Category">
            <button id="sort" type="button" @click="sortPrice()">Sort By Price</button>
        </div>
        <div class="row" v-if="products" id="prod-cards">
            <card v-for="product in searchProd() || sortPrice()" :key="product.prodID">
                <template #prod-img>
                    <img class="prod-img" :src="product.prodUrl" loading="lazy">
                </template>
                <template #prod-title>
                    {{ product.prodName }}
                </template>
                <template #Desc>
                    <p>
                        Category: {{ product.category }}
                    </p>
                    <p>
                        Amount: R{{ product.amount }}
                    </p>
                    <p>
                        Quantity: {{ product.quantity }}
                    </p>
                    <router-link :to="{ name: 'product', params: { id: product.prodID } }" id="see-more">View
                        More</router-link>
                </template>
            </card>
        </div>
        <div class="row" v-else>
            <div class="lead">
                <spinner />
            </div>
        </div>
    </div>
</template>

<script>
import card from '@/components/Card.vue';
import spinner from '@/components/Spinner.vue';
export default {
    components: {
        card,
        spinner
    },
    data() {
        return {
            search: ''
        }
    },
    methods: {
        searchProd() {
            let furniture = this.$store.state.products;
            let find = this.search;
            let found = furniture.filter(prod => {
                return prod.prodName.toLowerCase().includes(find.toLowerCase()) || prod.category.toLowerCase().includes(find.toLowerCase());
            });
            return found
        },
        sortPrice() {
            let unsorted = this.$store.state.products
            if (unsorted){
                unsorted.sort((a, b) => a.amount - b.amount)
            }
        }
    },
    computed: {
        products() {
            return this.$store.state.products
        }
    },
    mounted() {
        this.$store.dispatch('fetchProducts')
    }
}
</script>