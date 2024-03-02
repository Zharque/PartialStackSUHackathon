
document.addEventListener('DOMContentLoaded', function() {

    var typed = new Typed(".text", {
        strings: ["Tech", "Business", "Retail", "Healthcare", "Education", "Entertainment", "Sports"],
        typeSpeed: 100,
        backSpeed: 100,
        backDelay: 1000,
        loop: true
    });
});

function toggleMenu() {
    var subMenu = document.getElementById('subMenu');
    subMenu.classList.toggle('open-menu');
}