<template>
    <div class="card">
      <div class="photo">
        <slot name="prod-img"></slot>
      </div>
      <div class="content">
        <div class="title">
          <slot name="prod-title"></slot>
        </div>
        <div class="feature">
          <slot name="Desc"></slot>
        </div>
        <div class="actions">
          <slot name="actions"></slot>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: "CardComp"
  }
  </script>
  
  <style>
    /* Add styles here */
  </style>