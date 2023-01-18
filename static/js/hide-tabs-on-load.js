function hide_stuff_after_load() {
    setTimeout(function () {
      //console.log(window.location.pathname);
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
      if (document.getElementById("zzz_board_ev") != null){
        document.getElementById("zzz_board_ev").style.display = "none";
      };
      if (document.getElementById("zzz_trophies") != null){
        document.getElementById("zzz_trophies").style.display = "none";
      };
      if (document.getElementById("zzz_board_ag") != null){
        document.getElementById("zzz_board_ag").style.display = "none";
      };
      if (document.getElementById("zzz_sponsors") != null){
        document.getElementById("zzz_sponsors").style.display = "none";
      };
      if (document.getElementById("zzz_history") != null){
        document.getElementById("zzz_history").style.display = "none";
      };
      
      /*if (document.getElementById("account-orders") != null){
        document.getElementById("account-orders").style.display = "none";
      };
      if (document.getElementById("account-addresses") != null){
        document.getElementById("account-addresses").style.display = "none";
      };
      if (document.getElementById("account-account") != null){
        document.getElementById("account-account").style.display = "none";
      };*/
    }, 30);
  }
  