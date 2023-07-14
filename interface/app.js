const app = Vue.createApp({
    data() {
        return {
            display: false,
            text: '<div><p>E</p></div>'
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