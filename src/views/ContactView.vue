<template>

    <!-- Contact -->
    <h1 id="contact"></h1>
   
   <div class="contact-form-container mt-5">
   
   
     <section class="contact-info">
       <h2 class="contact-info-title" id="text-glow7">Contact Information</h2>
       <p class="contact-info-subtitle">Say something to start a live chat!</p>
       <div class="contact-info-phone">
         <img
           src="https://cdn.builder.io/api/v1/image/assets/TEMP/91077aea5aa62b8e443823a60102ac5646331cf76f7c36981cbc399d9dac9f13?apiKey=0bccd99636064f128fb65b1d52624404"
           alt="" class="contact-info-icon" />
         <span class="contact-info-phone-number">+27 083 385 8367</span>
       </div>
       <div class="contact-info-email">
         <img
           src="https://cdn.builder.io/api/v1/image/assets/TEMP/f33a12af71453b99485ac9031fecc220eb9409e1999afd1ffbb8eef1e6b8f8f2?apiKey=0bccd99636064f128fb65b1d52624404"
           alt="" class="contact-info-icon" />
         <span class="contact-info-email-address">mohammad.mhm16@gmail.com</span>
       </div>
       <div class="contact-info-location">
         <img
           src="https://cdn.builder.io/api/v1/image/assets/TEMP/0a95236edbb272ad63891b22868a195f09637d663fca1420ca3cc4475295718e?apiKey=0bccd99636064f128fb65b1d52624404"
           alt="" class="contact-info-icon" />
         <span class="contact-info-location-text">Lansdowne, Cape Town, South Africa</span>
       </div>
       <div class="contact-info-bottom">
         <div class="contact-info-bottom-content">
           <div class="contact-info-bottom-left">
             <div class="contact-info-social-icons">
              <a href="https://www.instagram.com/mohammad_mhm16/" target="_blank">
                <img
                  src="https://cdn.builder.io/api/v1/image/assets/TEMP/9bd43cfbebb909b8217c66a8c2ccd9270d0e362aeab1e6a2ef8ae68f1ba8ce3b?apiKey=0bccd99636064f128fb65b1d52624404"
                  alt="" class="contact-info-social-icon" />
              </a>
              <a href="https://discordapp.com/users/520600574148870152" target="_blank">
                <img
                  src="https://cdn.builder.io/api/v1/image/assets/TEMP/bb81d9e3889282d2a223a859cf8071d4c31be8305c4258e539dca8a5efabc91c?apiKey=0bccd99636064f128fb65b1d52624404"
                  alt="" class="contact-info-social-icon" />
              </a>
              <a href="https://github.com/mohammad-mohamed" target="_blank" class="github-icon">
                <i class="fab fa-github"></i>
              </a>
             </div>
           </div>
           <div class="contact-info-bottom-right">
             <div class="contact-info-avatar">
               <div class="contact-info-avatar-image"></div>
             </div>
           </div>
         </div>
       </div>
     </section>
   
     <section class="formcarry-container">
       <form action="https://formcarry.com/s/5BAGnwhvgiN" method="POST" enctype="multipart/form-data">
   
         <div class="formcarry-block">
           <label for="fc-generated-1-name">Full Name</label>
           <input type="text" name="name" id="fc-generated-1-name" placeholder="Your first and last name" />
         </div>
   
         <div class="formcarry-block">
           <label for="fc-generated-1-email">Your Email Address</label>
           <input type="email" name="email" id="fc-generated-1-email" placeholder="john@doe.com" />
         </div>
   
         <div class="formcarry-block">
           <label for="fc-generated-1-message">Your message</label>
           <textarea name="message"  id="fc-generated-1-message"
             placeholder="Enter your message..."></textarea>
         </div>
   
         <div class="formcarry-block">
           <button type="submit">Send</button>
         </div>
   
       </form>
       
     </section>
   </div>
   
   </template>
   
   
   <style>

    .github-icon {
      font-size: 1.5rem; /* Adjust icon size */
      margin-left: 10px; /* Adjust spacing */
      color: gray
    }
   
   /* Contact */
       
   @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500&display=swap');
   
   .formcarry-container {
   box-sizing: border-box;
   /* margin: 40px auto 0 auto; */
   padding: 0;
   font-family: "Inter", sans-serif;
   font-size: 14px;
   font-weight: 400;
   line-height: 24px;
   letter-spacing: -0.01em;
   
   width: 400px;
   
   /* NORMAL */
   --fc-border-color: #ECEFF9;
   --fc-normal-text-color: #0E0B3D;
   --fc-normal-placeholder-color: #B3B8D0;
   
   /* PRIMARY COLOR | HSL FORMAT*/
   --fc-primary-color-hue: 220;
   --fc-error-color-hue: 356;
   --fc-primary-hsl: var(--fc-primary-color-hue), 100%, 54%;
   --fc-error-hsl: var(--fc-error-color-hue), 100%, 54%;
   
   /* HOVER */
   --fc-field-hover-bg-color: #F7F9FC;
   --fc-border-hover-color: #DDE0EE;
   --fc-field-hover-text-color: #B3B8D0;
   
   --fc-border-active-color: #1463FF;
   }
   
   .formcarry-container * {
   box-sizing: border-box;
   }
   
   .formcarry-container label {
   display: block;
   cursor: pointer;
   }
   
   .formcarry-container .formcarry-block:not(:first-child) {
   margin-top: 16px;
   }
   
   /*=============================================
   =            Fields           =
   =============================================*/
   
   .formcarry-container input,
   .formcarry-container textarea,
   .formcarry-container select {
   margin-top: 4px;
   width: 100%;
   height: 42px;
   border: 1px solid var(--fc-border-color);
   color: var(--fc-normal-text-color);
   border-radius: 6px;
   padding: 8px 12px;
   
   font-family: "Inter", sans-serif;
   font-size:14px;
   transition: 125ms background, 125ms color, 125ms box-shadow;
   }
   
   .formcarry-container textarea{
   min-height: 188px;
   max-width: 100%;
   padding-top: 12px;
   }
   
   .formcarry-container input::placeholder,
   .formcarry-container textarea::placeholder,
   .formcarry-container select::placeholder {
   color: var(--fc-normal-placeholder-color);
   }
   
   .formcarry-container input:hover,
   .formcarry-container textarea:hover,
   .formcarry-container select:hover {
   border-color: var(--fc-border-hover-color);
   background-color: var(--fc-field-hover-bg-color);
   }
   
   .formcarry-container input:hover::placeholder,
   .formcarry-container textarea:hover::placeholder,
   .formcarry-container select:hover::placeholder {
   color: var(--fc-field-hover-text-color);
   }
   
   .formcarry-container input:focus,
   .formcarry-container textarea:focus,
   .formcarry-container select:focus {
   background-color: #fff;
   border-color: hsl(var(--fc-primary-hsl));
   box-shadow: hsla(var(--fc-primary-hsl), 8%) 0px 0px 0px 3px;
   outline: none;
   }
   
   .formcarry-container select {
   background-image: url("data:image/svg+xml,%3Csvg width='24' height='24' viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M11.9997 14.5001L8.46387 10.9642L9.64303 9.78589L11.9997 12.1434L14.3564 9.78589L15.5355 10.9642L11.9997 14.5001Z' fill='%236C6F93'/%3E%3C/svg%3E%0A");
   /* background-position: calc(100% - 20px) calc(1em + 4px), calc(100% - 15px) calc(1em + 4px); */
   background-size: 24px 24px;
   background-position: 98%;
   background-repeat: no-repeat;
   appearance: none;
   -webkit-appearance: none;
   }
   
   .formcarry-container button {
   font-family: "Inter", sans-serif;
   font-weight: 500;
   font-size: 14px;
   letter-spacing: -0.02em;
   height: 42px;
   line-height: 40px;
   width: 100%;
   border-radius: 6px;
   box-sizing: border-box;
   border: 1px solid hsla(var(--fc-primary-hsl));
   background-color: hsla(var(--fc-primary-hsl));
   color: #fff;
   cursor: pointer;
   }
   
   .formcarry-container button {
   font-family: "Inter", sans-serif;
   font-weight: 500;
   font-size: 14px;
   letter-spacing: -0.02em;
   height: 40px;
   line-height: 24px;
   width: 100%;
   border: 0;
   border-radius: 6px;
   box-sizing: border-box;
   background-color: hsla(var(--fc-primary-hsl));
   color: #fff;
   cursor: pointer;
   box-shadow: 0 0 0 0 transparent;
   
   transition: 125ms all;
   }
   
   .formcarry-container button:hover {
   background: linear-gradient(0deg, rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.1)), hsla(var(--fc-primary-hsl));
   }
   
   .formcarry-container button:focus {
   background: linear-gradient(0deg, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2)), hsla(var(--fc-primary-hsl));
   border-inline: 1px solid inline rgba(255, 255, 255, 0.6);
   box-shadow: 0px 0px 0px 3px rgba(var(--fc-primary-hsl), 12%);
   }
   
   .formcarry-container button:active {
   background: linear-gradient(0deg, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2)), hsla(var(--fc-primary-hsl));
   }
   
   .formcarry-container button:disabled {
   background-color: hsla(var(--fc-primary-hsl), 40%);
   cursor: not-allowed;
   }
   
   .formcarry-container input:focus:required:invalid,
   .formcarry-container input:focus:invalid, 
   .formcarry-container select:focus:required:invalid,
   .formcarry-container select:focus:invalid
   {
   color: hsl(var(--fc-error-hsl)); 
   border-color: hsl(var(--fc-error-hsl));
   box-shadow: 0px 0px 0px 3px hsla(var(--fc-error-hsl), 12%);
   }
   
   
   .contact-info {
   border-radius: 10px;
   background-color: rgba(0, 0, 0, 1);
   display: flex;
   max-width: 491px;
   flex-direction: column;
   padding: 49px 0 0 39px;
   }
   
   @media (max-width: 991px) {
   .contact-info {
     padding-left: 20px;
   }
   }
   
   .contact-info-title {
   background: linear-gradient(90deg, #fb9f49 0%, #ec8e00 100%);
   background-clip: text;
   -webkit-background-clip: text;
   -webkit-text-fill-color: transparent;
   font: 600 28px Poppins, sans-serif;
   }
   
   @media (max-width: 991px) {
   .contact-info-title {
     max-width: 100%;
   }
   }
   
   .contact-info-subtitle {
   color: #c9c9c9;
   margin-top: 23px;
   font: 400 18px Poppins, sans-serif;
   }
   
   @media (max-width: 991px) {
   .contact-info-subtitle {
     max-width: 100%;
   }
   }
   
   .contact-info-phone {
   align-self: start;
   display: flex;
   margin-top: 113px;
   gap: 20px;
   font-size: 16px;
   color: #fff;
   font-weight: 400;
   }
   
   @media (max-width: 991px) {
   .contact-info-phone {
     margin-top: 40px;
   }
   }
   
   .contact-info-icon {
   aspect-ratio: 1;
   object-fit: auto;
   object-position: center;
   width: 24px;
   }
   
   .contact-info-phone-number {
   font-family: Poppins, sans-serif;
   flex-grow: 1;
   flex-basis: auto;
   margin: auto 0;
   }
   
   .contact-info-email {
   align-self: start;
   display: flex;
   margin-top: 50px;
   gap: 20px;
   font-size: 16px;
   color: #fff;
   font-weight: 400;
   white-space: nowrap;
   }
   
   @media (max-width: 991px) {
   .contact-info-email {
     margin-top: 40px;
     white-space: initial;
   }
   }
   
   .contact-info-email-address {
   font-family: Poppins, sans-serif;
   flex-grow: 1;
   flex-basis: auto;
   }
   
   .contact-info-location {
   align-self: start;
   display: flex;
   margin-top: 50px;
   gap: 20px;
   font-size: 16px;
   color: #fff;
   font-weight: 400;
   }
   
   @media (max-width: 991px) {
   .contact-info-location {
     margin-top: 40px;
   }
   }
   
   .contact-info-location-text {
   font-family: Poppins, sans-serif;
   flex-grow: 1;
   flex-basis: auto;
   }
   
   .contact-info-bottom {
   margin-top: 66px;
   }
   
   @media (max-width: 991px) {
   .contact-info-bottom {
     max-width: 100%;
     margin-top: 40px;
   }
   }
   
   .contact-info-bottom-content {
   gap: 20px;
   display: flex;
   }
   
   @media (max-width: 991px) {
   .contact-info-bottom-content {
     flex-direction: column;
     align-items: stretch;
     gap: 0px;
   }
   }
   
   .contact-info-bottom-left {
   display: flex;
   flex-direction: column;
   line-height: normal;
   width: 56%;
   margin-left: 0px;
   }
   
   @media (max-width: 991px) {
   .contact-info-bottom-left {
     width: 100%;
   }
   }
   
   .contact-info-social-icons {
   display: flex;
   margin-top: 117px;
   gap: 20px;
   justify-content: space-between;
   }
   
   @media (max-width: 991px) {
   .contact-info-social-icons {
     margin-top: 40px;
   }
   }
   
   .contact-info-social-icon {
   aspect-ratio: 1;
   object-fit: auto;
   object-position: center;
   width: 30px;
   }
   
   .contact-info-bottom-right {
   display: flex;
   flex-direction: column;
   line-height: normal;
   width: 44%;
   margin-left: 20px;
   }
   
   @media (max-width: 991px) {
   .contact-info-bottom-right {
     width: 100%;
   }
   }
   
   .contact-info-avatar {
   border-radius: 50%;
   background-color: #1a1a1a;
   display: flex;
   padding-bottom: 71px;
   flex-direction: column;
   align-items: start;
   width: 182px;
   height: 182px;
   margin: 0 auto;
   }
   
   @media (max-width: 991px) {
   .contact-info-avatar {
     margin-top: 40px;
   }
   }
   
   .contact-info-avatar-image {
   background-color: rgba(72, 72, 72, 0.5);
   border-radius: 50%;
   z-index: 10;
   margin-top: -26px;
   width: 138px;
   height: 138px;
   }
   
   .contact-form-container {
   display: flex;
   flex-wrap: wrap;
   }
   @media (max-width:300px){
    .contact-form-container{
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr))
    }
   }
   
   .contact-info, .formcarry-container {
   flex: 1 1 50%;
   max-width: 50%;
   padding: 0 15px;
   }

   
   
   </style>