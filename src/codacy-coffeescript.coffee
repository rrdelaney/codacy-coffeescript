linter = require './linter'
transform = require './transform'
lintConfig = require './default'

try
    userConfig = require '/src/.codacy'
catch
    userConfig = {}

for tool in userConfig.tools when tool.name is 'coffeelint'
    for pattern in tool.patterns
        if pattern.parameters
            for parameter in pattern.parameters when parameter.name is 'value'
                lintConfig[pattern.patternId]["value"] = parameter.value

if userConfig.files
    errors = []
    for file in userConfig.files
        errors = errors.concat linter.lintFile "/src/#{file}", lintConfig
else
    errors = linter.lintDir '/src'

errors = (transform err for err in errors)
console.log JSON.stringify err for err in errors
