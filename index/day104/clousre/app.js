const inc_num_promise = require('.');

(async () => {
    const something = await inc_num_promise(3);
    console.log(something);
})();