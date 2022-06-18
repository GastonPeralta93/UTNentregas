var pool = require('./bd');
//var md5 = require('md5');

/*sirve ara listar novedades*/
async function getNovedades() {
    //me trae todas las columnas - en este caso necesito id y titulo
    var query = 'select * from novedades order by id asc';
    var rows = await pool.query(query);
    return rows;
}

async function deleteNovedadesById(id) {
    
    var query = 'delete from novedades where id = ?';
    var rows = await pool.query(query, [id]);
    return rows;
}

module.exports = { getNovedades, deleteNovedadesById }