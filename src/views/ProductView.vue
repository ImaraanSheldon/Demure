<template>
    <div class="container-fluid" id="single-view">
        <div class=" sing-img">
            <img :src="product.prodUrl" alt="prod-png" id="prod-png" loading="lazy">
        </div>
        <div class="prod-bio">
            <img :src="product.prodBio" alt="product-bio" id="prod-bg" loading="lazy">
            <div class="container prod-details">
                <h2>ABOUT</h2>
                <p>name: {{ product.prodName }}</p>
                <p>Price: R{{ product.amount }}</p>
                <p class="desc">About: {{ product.prodDes }}</p>
                <button class="cart">
                    add to cart
                </button>
            </div>
        </div>
    </div>
</template>
<script>

export default {
    components: {
    },
    computed: {
        product() {
            return this.$store.state.product;
        }
    },
    mounted() {
        this.$store.dispatch('fetchProduct', this.$route.params)
    }
}
</script>