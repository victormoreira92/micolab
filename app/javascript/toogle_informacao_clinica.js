$(document).ready(function() {
    $(document).on('change', '.toogle_atributo', function() {
        const valorSelecionado = $(this).val().toLowerCase().trim();
        const campo = this.dataset.campo;
        console.log(this.dataset.campoampo)
        if (valorSelecionado == 'true') {
            $(`.${campo}`).removeClass('d-none');
        } else {
            $(`.${campo}`).addClass('d-none');
        }
    });
});
