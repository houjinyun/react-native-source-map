/**
 * Created by cxmyDev on 2017/10/31.
 */
var sourceMap = require('source-map');
var fs = require('fs');

var params = process.argv.slice(2)
var line = parseInt(params[0])
var column = parseInt(params[1])

fs.readFile(__dirname + '/release.bundle.map', 'utf8', function (err, data) {
    var smc = new sourceMap.SourceMapConsumer(data);
    smc.then(map => {
        console.log(map.originalPositionFor({
            line: line,
            column: column
        }))
    }).catch(err => {
        console.log(err)
    })
});
