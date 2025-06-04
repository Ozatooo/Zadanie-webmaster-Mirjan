document.addEventListener('DOMContentLoaded', function () {
    tns({
        container: '.my-slider',
        items: 1,
        slideBy: 1,
        autoplay: false,
        controls: true,
        nav: false,
        gutter: 10,
        responsive: {
            640: {
                items: 2
            },
            900: {
                items: 3
            },
            1200: {
                items: 4
            }
        }
    });
});