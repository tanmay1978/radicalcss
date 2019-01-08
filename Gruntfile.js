//Grunt file for compiling sass



module.exports = function(grunt) {
  // Do grunt-related things in here
  
  require('load-grunt-tasks')(grunt);
  
  
  grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        sass: {
            options: {
                sourceMap: true
            },
            dist: {
                files: {
                    'main.css': 'css-dev/main.scss'
                }
            }
        },
        watch: {
			css: {
				files: 'css-dev/*.scss',
				tasks: ['sass']
			}
		}
  })
  
  grunt.registerTask('default', ['watch']);
};