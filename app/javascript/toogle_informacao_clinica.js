$(document).ready(function() {
    $(document).on('change', '.toogle_atributo', function() {
        const valorSelecionado = $(this).val().toLowerCase().trim();
        const campo = this.dataset.campo;
        console.log(campo)
        if (valorSelecionado == 'true') {
            $(`.${campo}`).removeClass('disabled');
        } else {
            $(`.${campo}`).addClass('disabled');
        }
    });
});
