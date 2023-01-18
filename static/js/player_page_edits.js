function player_page_switch_tabs(evt, tabName) {
  //console.log(evt);
  var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("site-content");

  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("content-filter__item");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" content-filter__item--active","");
  }
  document.getElementById(tabName).style.display = "block";

  evt.currentTarget.className += " content-filter__item--active";
}
