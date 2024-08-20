<template>
    <nav class="navbar navbar-danger bg-danger bg-opacity-125 sticky-top">
      <div class="container-fluid justify-content-between">
        <img
          src="https://mohammad-mohamed.github.io/hostedImages/images/JS_EOMP/Icon/falafel_icon.jpg"
          alt="Logo"
          class="navbar-brand"
        />
        <div class="collapse" id="navbarToggleExternalContent" data-bs-theme="dark">
          <nav class="navbar navbar-dark bg-danger">
            <div class="container-fluid">
              <ul class="navbar-nav d-flex flex-row">
                <li class="nav-item">
                  <router-link class="nav-link me-5" to="/">Home</router-link>
                </li>
                <li class="nav-item">
                  <router-link class="nav-link me-5" to="/about">About Us</router-link>
                </li>
                <li class="nav-item">
                  <router-link class="nav-link me-5" to="/products">Product</router-link>
                </li>
                <li class="nav-item">
                  <router-link class="nav-link me-5" to="/admin">Admin</router-link>
                </li>
                <li class="nav-item">
                  <router-link class="nav-link me-5" to="/contact">Contact</router-link>
                </li>
              </ul>
            </div>
          </nav>
        </div>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarToggleExternalContent"
          aria-controls="navbarToggleExternalContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>
    </nav>
  </template>
  
  <script>
  export default {};
  </script>
  
  <style scoped>
  .navbar-brand {
    width: 60px;
  }
  
  .nav-link {
    margin-right: 1.25rem; /* equivalent to me-5 in Bootstrap */
  }
  </style>
  