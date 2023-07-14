const app = Vue.createApp({
    data() {
        return {
            display: false,
            text: 'Place <span class="font-medium text-yellow">E</span> Holder'
        }
    },
}).mount('.wrapper');

window.addEventListener('message', ({ data }) => {
    if (data.action === 'visible') {
        app.text = data.text;
        app.display = true;

        playSound('help.mp3');
    } else if (data.action === 'hidden') {
        app.display = false;
    }
});

function playSound(targetFile) {
    const audio = new Audio(`./sound/${targetFile}`);
    audio.play();
}