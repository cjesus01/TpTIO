"use strict";
document.addEventListener("DOMContentLoaded", function (){
    // declaracion de elementos:
    let botonmodal = document.getElementById("botonmodal");
    const modal = ` <div class="modal">
    <div class="modal-contenido">
        <span class="close">&times;</span>
        <form class="formulario-deportes">
            <input type="date" name="fecha" 
            min="2022-05-26" max="2022-12-31" id="fecha-modal" required>
            <input type="time" name="horario" id="horario-torneo-modal" required>
            <select name="lugar" id="select-lugar-modal">
                <option value="Tres Arroyos"> Sede Tres Arroyos </option>
                <option value="Claromeco"> Sede Claromeco </option>
                <option value="Tandil"> Sede Tandil </option>
                <option value="Olavarria"> Sede Olavarria </option>
                <option value="Maiameee"> Sede Maiameee </option>
            </select>
            <select name="deporte" id="deporte-select-modal">
                <option value="Futbol"> Futbol </option>
                <option value="Basquet"> Basquet</option>
                <option value="Natacion"> Natacion </option>
                <option value="Voleibol"> Voleibol </option>
                <option value="Tenis"> Tenis </option>
                <option value="Handball"> Handball </option>
            </select>
            <button class="btnenviar"> Enviar </button>
        </form>
    </div> `;
    let divModal = document.querySelector(".modal");

    botonmodal.addEventListener('click', ()=>{
       cargarModal();

     });

    function cargarModal(){
        divModal.innerHTML= modal;
       
        
    }


});