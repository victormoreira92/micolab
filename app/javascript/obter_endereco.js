import Swal from 'sweetalert2'

$(document).ready(function () {

  $('.botao_cep').click(function (event) {

      event.preventDefault();

      $(this).prop('disabled', true);

      const cep = $('.campo_cep').val();
      var $form = $(this).closest('form');

      const opcaoBrasil = 'Brasil';
      $.ajax(
          {
              url: '/unidades_saudes/obter_endereco',
              dataType: 'json',
              type: 'GET',
              data: {cep: cep},
              success: function (data) {
                  $form.find('.dado_endereco_rua').val(data['street']);
                 
                  $form.find('.dado_endereco_bairro').val(data['neighborhood']);
                 
                  $form.find('.dado_endereco_cidade').val(data['city']);
                 
                  $form.find('.dado_endereco_estado').val(data['state']);
                 
                  $form.find(`.dado_endereco_pais_id option:contains(\'${opcaoBrasil}\')`).attr('selected','selected');
              },
              error: function () {
                  Swal.fire({
                      icon: "error",
                      title: "CEP não encontrado",
                  })

              },
              always: function () {
                  $('.botao_cep').prop('disabled', false);
              }
          }
      )

  });

});