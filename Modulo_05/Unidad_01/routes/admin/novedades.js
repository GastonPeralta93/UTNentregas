var express = require('express');
var router = express.Router();
//var usuariosModel = require('../../models/usuariosModel');
var novedadesModel = require('../../models/novedadesModel')

    //async porque no se cuando en que momento va a cargar estas novedades
router.get('/', async function (req, res, next) {
    
    var novedades = await novedadesModel.getNovedades();
    
    res.render('admin/novedades', {
        layout:'admin/layout',
        usuario: req.session.nombre,
        novedades //esto lo paso al render, para poder imprimirlo en hbs
    });
});

/*para  eliminar una novedad eliminar y modificar son <a>*/
router.get('/eliminar/:id', async(req, res, next) => {
    var id = req.params.id; // params en vez de body
    await novedadesModel.deleteNovedadesById(id);
    res.redirect('/admin/novedades')
}); //cierra get de eliminar

module.exports = router;