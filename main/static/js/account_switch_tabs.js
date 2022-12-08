
    "use strict";

    var snk_current_active_tab = "";

    function account_switch_tabs(evt, tabName) {
    //console.log(evt);
    var i, tabcontent, tablinks;
    if (window.location.pathname == '/account/neerajvb3/'){
      tabcontent = document.getElementsByClassName("card--lg");
    } else {
      tabcontent = document.getElementsByClassName("site-content");
    };

    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("df-account-navigation__link");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" is-active","");
    }
    document.getElementById(tabName).style.display = "block";
  
    evt.currentTarget.className += " is-active";
    snk_current_active_tab = evt.currentTarget;
    console.log(snk_current_active_tab.className);
  }

  (function () {
    //console.log(window.location.pathname);
    if (document.getElementById("account-orders") != null){
      document.getElementById("account-orders").style.display = "none";
    };
    if (document.getElementById("account-addresses") != null){
      document.getElementById("account-addresses").style.display = "none";
    };
    if (document.getElementById("account-account") != null){
      document.getElementById("account-account").style.display = "none";
    };
  })();




  /*function hide_stuff_after_load() {
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
  }*/
