const User = require('.');


(async () => {
    const user = await User.readFile("./dummyfile.txt");
    console.log(user);
})();
