const Mystruct = require('.');

const mystruct = new Mystruct();

console.log(mystruct.get_content("./dummyfile.txt"));

(async () => {
    const content = await mystruct.get_content("./dummyfile.txt");
    console.log(content);
})();