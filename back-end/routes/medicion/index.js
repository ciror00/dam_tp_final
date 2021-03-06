var express = require('express');
var routerMedicion = express.Router();
var pool = require('../../mysql');

//Espera recibir por parámetro un id de dispositivo y devuelve su última medición
routerMedicion.get('/:idDispositivo', function(req, res) {
    pool.query('Select * from Mediciones where dispositivo_id=? order by fecha desc', [req.params.idDispositivo], function(err, result, fields) {
        if (err) {
            res.send(err).status(400);
            return;
        }
        res.send(result[0]);
    });
});

//Espera recibir por parámetro un id de dispositivo y devuelve todas sus mediciones
routerMedicion.get('/:idDispositivo/todas', function(req, res) {
    pool.query('Select * from Mediciones where dispositivo_id=? order by fecha desc', [req.params.idDispositivo], function(err, result, fields) {
        if (err) {
            res.send(err).status(400);
            return;
        }
        res.send(result);
    });
});

//Espera recibir por parámetro un id de dispositivo y un valor de medición y lo inserta en base de datos.
routerMedicion.post('/agregar', function(req, res) {
    pool.query('Insert into Mediciones (fecha,valor,dispositivo_id) values (?,?,?)', [req.body.fecha, req.body.valor, req.body.dispositivo_id], function(err, result, fields) {
        if (err) {
            res.send(err).status(400);
            return;
        }
        res.send(result);
    });
});

module.exports = routerMedicion;