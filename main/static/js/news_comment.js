
"use strict";
var snk_toggled_element_id = "";

function reply_mode_on(cmt_id) {
    const main_comment = document.getElementsByClassName("comment-respond-main");
    for (let i = 0; i < main_comment.length; i++) {
        main_comment[i].style.display = "none";
    }
    const element_id = "respond-".concat(cmt_id);
    if (snk_toggled_element_id != "" && snk_toggled_element_id != element_id){
        document.getElementById(snk_toggled_element_id).style.display = "none";
    };
    document.getElementById(element_id).style.display = "block";
    snk_toggled_element_id = element_id;
}

function reply_mode_off() {
    const main_comment = document.getElementsByClassName("comment-respond-main");
    for (let i = 0; i < main_comment.length; i++) {
        main_comment[i].style.display = "block";
    }
    if (snk_toggled_element_id != ""){
        document.getElementById(snk_toggled_element_id).style.display = "none";
    };
}

(function () {

    var comment_forms = document.getElementsByClassName("comment-respond");
    for (let i = 0; i < comment_forms.length; i++) {
        comment_forms[i].style.display = "none";
    }
})();
