const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
    res.send('haii im fauzi');
    });

    app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
    });