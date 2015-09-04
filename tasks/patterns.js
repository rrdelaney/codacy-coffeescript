var coffeelint = require('coffeelint');

module.exports = function(grunt) {
    grunt.registerTask('patterns', 'Generate docs for codacy', function() {
        var done = this.async();
        grunt.log.writeln('Generating docs...');

        var patterns = grunt.file.readJSON('tasks/patterns.json');
        var codacyPatterns = {
            name: patterns.name,
            patterns: []
        };

        var codacyPatternDescriptions = [];

        for (var rule in patterns.patterns) {
            var category = patterns.patterns[rule].category;
            var message = coffeelint.RULES[rule].message;
            var description = coffeelint.RULES[rule].description;
            var level = patterns.patterns[rule].level;
            var parameters = patterns.patterns[rule].parameters;

            grunt.file.write('docs/description/'+rule+'.md', description);
            codacyPatterns.patterns.push({
                patternId: rule,
                category: category,
                level: level,
                parameters: parameters
            });

            codacyPatternDescriptions.push({
                patternId: rule,
                title: titleize(rule),
                description: message,
                parameters: parameters,
                timeToFix: 5
            });
        }

        grunt.file.write('docs/description/description.json', JSON.stringify(codacyPatternDescriptions, null, 2));

        grunt.file.write('docs/patterns.json', JSON.stringify(codacyPatterns, null, 2));

        function titleize(name) {
            var words = name.replace(/_/g, ' ').split(' ');
            var buffer = [];
            for (var i = 0; i < words.length; ++i) {
                buffer.push(words[i].charAt(0).toUpperCase() + words[i].toLowerCase().slice(1));
            }
            return buffer.join(' ');
        }
    });
};
