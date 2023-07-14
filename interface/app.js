const app = Vue.createApp({
    data() {
        return {
            display: true,
            text: 'PRESS <div><p>X</p></div> TO CANCEL'
        }
    },
}).mount('.wrapper');

window.addEventListener('message', ({ data }) => {
    if (data.action === 'visible') {
        app.text = data.text;
        app.display = true;
    } else if (data.action === 'hidden') {
        app.display = false;
    }
});