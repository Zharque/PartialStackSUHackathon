
document.addEventListener('DOMContentLoaded', function() {

    var typed = new Typed(".text", {
        strings: ["a Web Developer", "a Software Engineer", "into Cybersecurity"],
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