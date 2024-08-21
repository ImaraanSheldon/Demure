<template>
    <div class="container-fluid" id="full-footer">
        <img src="" alt="nav-logo">
        <div class="container links">
            <p>Quick Links</p>
            <router-link to="/" id="link">Home</router-link>
            <router-link to="/about" id="link">About</router-link>
            <router-link to="/products" id="link">Store</router-link>
            <router-link to="/admin" id="link">Admin</router-link>
            <router-link to="/contact" id="link">Contact Us</router-link>
        </div>
        <div class="container" id="contact-info">
            <h4>contact us</h4>
            <div class="socials">
                <span>
                    Mohammad Mohamed
                </span>
                <span class="icons">
                    <a href="https://wa.me/0833858267" target="_blank">
                        <i class="fa fa-whatsapp"></i>
                    </a>
                    <a href="https://www.instagram.com/mohammad.mhm16/" target="_blank">
                        <i class="fa fa-instagram"></i>
                    </a>
                    <a href="mohammad.mhm16@gmail.com" target="_blank">
                        <i class="fa-regular fa-envelope"></i>
                    </a>
                </span>
            </div>
            <div class="socials">
                <span>
                    Imaraan Sheldon
                </span>
                <span class="icons">
                    <a href="https://wa.me/" target="_blank">
                        <i class="fa fa-whatsapp"></i></a>
                    <a href="https://www.instagram.com/imraan/" target="_blank"><i
                            class="fa fa-instagram"></i></a>
                    <a href="imaraansheldonis2302003@gmail.com" target="_blank"><i
                            class="fa-regular fa-envelope"></i></a>
                </span>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name: 'FooterComp'
}
</script>

<style scoped>
#full-footer {
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
    background: linear-gradient(to bottom, rgb(1, 3, 9), rgb(31, 37, 64), rgb(1, 3, 9));
    min-height: 4rem;
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

#link {
    text-decoration: none;
    color: #B7B5B3;
}

.links {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    width: 300px !important;
    padding: 0;
    margin: 0;
    font-size: small;
    color: white;
}
.icons{
    display: flex;
    gap: 3px;
}
.router-link-exact-active {
    text-decoration: underline !important;
    color: aqua !important;
}

img[alt="nav-logo"] {
    height: 100px;
    filter: drop-shadow(0 0 1rem blue);
}

#contact-info {
    display: flex;
    flex-direction: column;
    width: 300px;
    margin: 0;
}
.socials{
    display: flex;
    gap: 5px;
    justify-content: center;
}
</style>