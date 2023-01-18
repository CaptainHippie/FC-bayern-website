(function (){
    const all_products = document.getElementsByClassName("product__item");
    const switch_pages = document.getElementsByClassName("pagination-toggle");
    const right_page = document.getElementsByClassName("snk-next-page")[0];
    const left_page = document.getElementsByClassName("snk-prev-page")[0];
    const ppp = 12;
    const product_count = all_products.length;
    var active_page = 1;

    function toggle_page(num){
        var lower = ppp*num + 1;
        var exceed_current = product_count > (ppp*(num + 1));
        var is_last_page = product_count == (ppp*(num + 1));
        var upper = (ppp*num) + (product_count%ppp);

        if (exceed_current || is_last_page){
            upper = (ppp*(num + 1));
        };
        //console.log(lower + "," + upper);
        for (let i = 0; i <= (all_products.length-1); i++) {
            all_products[i].style.display = "none";
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
            var id_name = "snk-product-" + i;
            document.getElementById(id_name).style.display = "block";
        }
        for (let i = 0; i <= (switch_pages.length-1); i++) {
            switch_pages[i].className = switch_pages[i].className.replace(" active","");
        }
        active_page = num + 1;
        document.getElementById("snk-lower").innerHTML = lower;
        document.getElementById("snk-upper").innerHTML = upper;
        document.getElementById("snk-page-no-" + active_page).className += " active";
    };
    

    if (product_count > ppp){
        toggle_page(0);
        for (let i = 0; i <= (switch_pages.length - 1); i++) {
            switch_pages[i].addEventListener("click", function() { toggle_page(i) });
        };
        right_page.addEventListener("click", function() { toggle_page(active_page) });
        left_page.addEventListener("click", function() { toggle_page(active_page-2) });
    }

    
})();