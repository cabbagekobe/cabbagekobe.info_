var imgs = document.querySelectorAll("p img");

Object.keys(imgs).forEach(function(i) {
    imgs[i].parentNode.className = 'img-responsive';
});
