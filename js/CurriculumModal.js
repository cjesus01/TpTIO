"use strict";
document.addEventListener("DOMContentLoaded", function (){
    const botonmodal = document.getElementById("botonmodal");
    const divModal = document.querySelector("#modal");
    const botoncerrar = document.querySelector(".close");
    const contenedormodal = document.querySelector("#modal");
  
    botonmodal.addEventListener('click', ()=>{
       contenedormodal.classList.remove("displaymodalnone");
       contenedormodal.classList.add("displaymodalblock");
     });
  
    botoncerrar.addEventListener('click', ()=>{
        contenedormodal.classList.remove("displaymodalblock");
        contenedormodal.classList.add("displaymodalnone");
     }); 
});