function playSound(targetFile) {
    const audio = new Audio(`./sound/${targetFile}`);
    audio.play();
}

const Wait = (ms) => new Promise(res => setTimeout(res, ms));

const app = Vue.createApp({
    data() {
        return {
            display: false,
            text: 'E',
            description: 'เพื่อเปิดร้านค้า'
        }
    },
}).mount('.wrapper');

window.addEventListener('message', ({ data }) => {
    // if (data.action === 'playSound') {
    //     playSound(data.fileName);
    // }

    if (data.action === 'visible') {
        app.text = data.text;
        app.description = data.description;
        app.display = true;
    } else if (data.action === 'hidden') {
        app.display = false;
    }
});