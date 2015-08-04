linter = require './linter'
transform = require './transform'
lintConfig = require './default'

try
    userConfig = require '/src/.codacy'
catch
    userConfig = {}

if userConfig.files
    errors = []
    for file in userConfig.files
        errors = errors.concat linter.lintFile "/src/#{file}", lintConfig
else
    errors = linter.lintDir '/src'

errors = (transform err for err in errors)
console.log JSON.stringify err for err in errors
