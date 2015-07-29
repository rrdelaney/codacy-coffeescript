transform = (err) ->
    filename: err.filename.replace /^\/src\//g, ''
    message: err.message
    patternId: err.rule
    line: err.lineNumber

module.exports = transform
