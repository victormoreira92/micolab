// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import jQuery from "jquery";
import Inputmask from "inputmask";
import "./datatable"
import "./obter_endereco"
import "./input_mask"
import DataTable from 'datatables.net-dt';
import 'datatables.net-bs4'


document.addEventListener('turbo:load', () => {
  let table = new DataTable('#dttb', {
    paging: true,
    responsive: true,
    columnDefs: [{ width: '30%', targets: 0 }],
    language: {
      url: '//cdn.datatables.net/plug-ins/2.1.8/i18n/pt-BR.json',
    },
  });
});

