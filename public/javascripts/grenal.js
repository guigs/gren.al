var WIDTH_DIFF = 230;

function bodyLoad() {
    bodyResize();
    return true;
}

function bodyResize() {
  var divContent = $("conteudo");
  var novaLargura = document.body.clientWidth - WIDTH_DIFF + "px";
  divContent.style.width = novaLargura;
}