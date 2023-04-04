const mybook = document.getElementById('mybook');
const minimizeButton = document.querySelector('.minimize-button');
const maximizeButton = document.querySelector('.maximize-button');
const closeButton = document.querySelector('.close-button');

minimizeButton.addEventListener('click', () => {
    mybook.style.display = 'none';
});

maximizeButton.addEventListener('click', () => {
    if (mybook.classList.contains('maximized')) {
        mybook.classList.remove('maximized');
    } else {
        mybook.classList.add('maximized');
    }
});

closeButton.addEventListener('click', () => {
    mybook.remove();
});
