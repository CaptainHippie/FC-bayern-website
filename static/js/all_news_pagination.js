(function (){
    const all_articles = document.getElementsByClassName("post-list__item");
    const switch_pages = document.getElementsByClassName("pagination-toggle");
    const right_page = document.getElementsByClassName("snk-next-page")[0];
    const left_page = document.getElementsByClassName("snk-prev-page")[0];
    const arpp = 10;
    const article_count = all_articles.length;
    var active_page = 1;

    function toggle_page(num){
        var lower = arpp*num + 1;
        var exceed_current = article_count > (arpp*(num + 1));
        var is_last_page = article_count == (arpp*(num + 1));
        var upper = (arpp*num) + (article_count%arpp);

        if (exceed_current || is_last_page){
            upper = (arpp*(num + 1));
        };
        //console.log(lower + "," + upper);
        for (let i = 0; i <= (all_articles.length-1); i++) {
            all_articles[i].style.display = "none";
        }
        if (num == 0){
            left_page.style.display = "none";
        } else {
            left_page.style.display = "block";
        };
        if (num >= switch_pages.length-1){
            right_page.style.display = "none";
        } else {
            right_page.style.display = "block";
        };
        for (let i = lower; i <= upper; i++) {
            var id_name = "snk-post-" + i;
            document.getElementById(id_name).style.display = "block";
        }
        for (let i = 0; i <= (switch_pages.length-1); i++) {
            switch_pages[i].className = switch_pages[i].className.replace(" active","");
        }
        active_page = num + 1;
        document.getElementById("snk-page-no-" + active_page).className += " active";
    };
    

    if (article_count > arpp){
        toggle_page(0);
        for (let i = 0; i <= (switch_pages.length - 1); i++) {
            switch_pages[i].addEventListener("click", function() { toggle_page(i) });
        };
        right_page.addEventListener("click", function() { toggle_page(active_page) });
        left_page.addEventListener("click", function() { toggle_page(active_page-2) });
    }

    
})();