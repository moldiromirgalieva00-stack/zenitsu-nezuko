function createPetal() {
    const container = document.getElementById('sakura');
    const petal = document.createElement('div');
    
    petal.classList.add('petal');
    petal.style.left = Math.random() * 100 + 'vw';
    petal.style.width = Math.random() * 10 + 5 + 'px';
    petal.style.height = petal.style.width;
    petal.style.animationDuration = Math.random() * 3 + 2 + 's';
    petal.style.opacity = Math.random();
    
    container.appendChild(petal);
    
    setTimeout(() => {
        petal.remove();
    }, 5000);
}

setInterval(createPetal, 300);

// Простая обработка формы
document.querySelector('form').addEventListener('submit', (e) => {
    e.preventDefault();
    alert('Танджиро получил ваше письмо! Ждем вас на свадьбе!');
});