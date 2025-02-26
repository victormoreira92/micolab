// Entry point for the build script in your package.json

import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import jQuery from "jquery";
import Inputmask from "inputmask";
import "@nathanvda/cocoon"
import TomSelect from "tom-select";
import DataTable from 'datatables.net-dt';
import 'datatables.net-bs4'
import 'datatables.net-responsive-bs5';
import "./obter_endereco"
import "./input_mask"
import "./toogle_informacao_clinica"
import $ from "jquery";



document.addEventListener('turbo:load', () => {
  let table = new DataTable('#dttb', {
    paging: true,
    responsive: true,
    columnDefs: [{ width: '30%', targets: 0 }],
    language: {
      url: '//cdn.datatables.net/plug-ins/2.2.2/i18n/pt-BR.json',
    }
  });

  let select = new TomSelect(".tom-select",{
    allowEmptyOption: false,
    create: true,
    render:{
      option_create: function( data, escape ){
        return '<div class="create">Adicionar <strong>' + escape(data.input) + '</strong>&hellip;</div>';
      },
      no_results: function( data, escape ){
        return '<div class="no-results">Não encontrado </div>';
      },
    }
  })
});

$(document).ready(function() {
  $('.toogle_atributo').on('change', function() {
    if ($(this).val() === 'sim') {
      $('.atributos_informacao_clinica').removeClass('d-none').addClass('d-block');
    } else {
      $('.atributos_informacao_clinica').removeClass('d-block').addClass('d-none');
    }
  });
});





