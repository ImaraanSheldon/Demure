<template>
    <button class="btn menubtn" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling"
        aria-controls="offcanvasScrolling"><i class="fa-solid fa-bars"></i>
    </button>

    <div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="true" tabindex="-1"
        id="offcanvasScrolling" aria-labelledby="offcanvasScrollingLabel">
        <div class="offcanvas-header">
            <router-link to="/" id="nav-logo">
                <img src="" alt="logo">
            </router-link>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <ul id="list">
                <li><router-link to="/" id="nav-item">Home</router-link></li>
                <li><router-link to="/about" id="nav-item">About</router-link></li>
                <li><router-link to="/products" id="nav-item">Store</router-link></li>
                <li><router-link to="/admin" id="nav-item">Admin</router-link></li>
                <li><router-link to="/contact" id="nav-item">Contact Us</router-link></li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    name: 'NavBarComp'
}
</script>

<style>



</style>