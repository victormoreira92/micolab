document.addEventListener("DOMContentLoaded", function (event) {
  MaskTelefone()
  MaskCPF()
  MaskCNES()
  MaskCEP()
})

function MaskCEP(){
  var im = new Inputmask("99999-999", {removeMaskOnSubmit: true});
  $('.campo_cep').each(function () {
    im.mask($(this));
  });
}

function MaskCNES() {
  var im = new Inputmask("9999999", {removeMaskOnSubmit: true});
  $('.campo_cnes').each(function () {
      im.mask($(this));
  });
}

function MaskCPF() {
  var im = new Inputmask("999.999.999-99", {removeMaskOnSubmit: true});
  $('.campo_cpf').each(function () {
      im.mask($(this));
  });
}

function MaskTelefone() {
  var im = new Inputmask("(99) 9999-9999", {removeMaskOnSubmit: true});
  $('.campo_telefone').each(function () {
      im.mask($(this));
  });
}