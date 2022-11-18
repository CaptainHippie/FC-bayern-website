function player_page_switch_tabs(evt, tabName) {
  //console.log(evt);
  var i, tabcontent, tablinks;
  if (window.location.pathname == '/roster/'){
    tabcontent = document.getElementsByClassName("content-area");
  } else {
    tabcontent = document.getElementsByClassName("site-content");
  };

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


function hide_stuff_after_load() {
  setTimeout(function () {
    console.log(window.location.pathname);
    if (document.getElementById("zzz_statistics") != null){
      document.getElementById("zzz_statistics").style.display = "none";
    };
    if (document.getElementById("zzz_gallery_tab") != null){
      document.getElementById("zzz_gallery_tab").style.display = "none";
    };
    if (document.getElementById("zzz_player_news") != null){
      document.getElementById("zzz_player_news").style.display = "none";
    };
    if (document.getElementById("zzz_table") != null){
      document.getElementById("zzz_table").style.display = "none";
    };
    if (document.getElementById("zzz_results") != null){
      document.getElementById("zzz_results").style.display = "none";
    };
    if (document.getElementById("zzz_schedules") != null){
      document.getElementById("zzz_schedules").style.display = "none";
    };
  }, 30);
}
