const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('¡Hola xxxxMundo!');
});

app.listen(8080, () => {
  console.log('Servidor escuchando en el puerto 8080');
});
