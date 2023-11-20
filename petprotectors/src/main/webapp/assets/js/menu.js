document.querySelector(".hamburguer")
        .addEventListener("click", mostrar_menu)

function mostrar_menu(){
    document.querySelector(".menu").classList.toggle("show-menu")
}

function novoAgendamento(){

    var AgendarDialog = document.getElementById('agendamento');
    var teste = document.getElementById('teste');

        AgendarDialog.showModal();
        teste.style.display = 'block';

}