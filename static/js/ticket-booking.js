(function (){
        
    "use strict";
    
    const category_choices = document.getElementsByClassName("seat-category-option");
    const quantity_choices = document.getElementsByClassName("seat-quantity-option");
    const max_allowed_for_user = quantity_choices.length;
    
    const add_btn = document.getElementById("add-ticket-to-cart");
    const ticket_select = document.getElementById("ticket_category");
    const ticket_qty_select = document.getElementById("ticket_qty");
    var ticket_cat = "";
    var ticket_qty = 0;

    const hidden_seat_type = document.getElementById("hidden_seat_type");
    const hidden_quantity = document.getElementById("hidden_quantity");
    const hidden_total = document.getElementById("hidden_total");
    const alert_msg = document.getElementById("added-to-cart-msg");

    const type_display = document.getElementById("ticket-type-display");
    const price_display = document.getElementById("ticket-price-display");
    const total_display = document.getElementById("ticket-total-display");

    for (let i = 0; i <= (category_choices.length-1); i++) {
        var cur_cat_type = category_choices[i].value;
        var cur_cat_seats = parseInt(document.getElementById(cur_cat_type + "-seats").innerHTML);
        //console.log(cur_cat_type);
        //console.log(cur_cat_seats);
        if (cur_cat_seats == 0){
            category_choices[i].style.display = "none";
        }
            
    }

    function add_to_checkout(){
        if ((ticket_cat != "") && (ticket_qty>0)){
            hidden_seat_type.value = ticket_cat;
            hidden_quantity.value = ticket_qty;
            var price = document.getElementById(ticket_cat + "-price").innerHTML;
            var total_value = ticket_qty * price;
            hidden_total.value = total_value;
            //console.log(total_value)
            alert_msg.style.display = "block";
            alert_msg.innerHTML = "Added to cart!";

            var cat_no = ticket_cat.slice(-1);
            type_display.innerHTML = "Category "+cat_no+"&nbsp; <strong class='product-quantity'>&times;&nbsp;" +ticket_qty+"</strong>";
            price_display.innerHTML = "<span class='woocommerce-Price-amount amount'><bdi><span class='woocommerce-Price-currencySymbol'>&euro;</span> "+ price + "</bdi></span>";
            total_display.innerHTML = "<span class='woocommerce-Price-currencySymbol'>&euro;</span>&nbsp;" + total_value;
        } else {
            alert_msg.style.display = "block";
            alert_msg.innerHTML = "Please select a valid category and quantity!";
        }

    };
    function update_ticket_and_qty(){
        ticket_cat = ticket_select.value;
        ticket_qty = ticket_qty_select.value;

        var max_allowed_cat_seats = parseInt(document.getElementById(ticket_cat + "-seats").innerHTML);
        var max_allowed = 10;
        if (max_allowed_cat_seats<10){
            max_allowed = max_allowed_cat_seats
        }
        if (max_allowed_cat_seats > max_allowed_for_user){
            max_allowed = max_allowed_for_user;
        }
        for (let i = 0; i <= (max_allowed_for_user-1); i++) {
            quantity_choices[i].style.display = "none";
        }
        for (let i = 0; i <= (max_allowed-1); i++) {
            quantity_choices[i].style.display = "block";
        }

    };
    add_btn.addEventListener("click", function() { add_to_checkout() });
    ticket_select.addEventListener("change", function() { update_ticket_and_qty() });
    ticket_qty_select.addEventListener("change", function() { update_ticket_and_qty() });

    
})();