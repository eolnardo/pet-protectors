document.querySelector(".hamburguer")
        .addEventListener("click", mostrar_menu)

function mostrar_menu(){
    document.querySelector(".menu").classList.toggle("show-menu")
}