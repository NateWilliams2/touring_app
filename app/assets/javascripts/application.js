//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
/* Toggle between showing and hiding the navigation menu links when the user clicks on the hamburger menu / bar icon */
function navFunction() {
    var x = document.getElementById("myLinks");
    console.log(x)
    if (x.style.display === "block") {
      x.style.display = "none";
    } else {
      x.style.display = "block";
    }
}