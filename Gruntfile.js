/*
*
* cssplot
* Simple, css-only plotting
* https://github.com/asciimoo/cssplot
* demo: http://asciimoo.github.io/cssplot/
*
*/
module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    less: {
      dist: {
        options: {
            compress: true
        },
        files: {
            'build/cssplot.base.css': 'src/cssplot.base.less',
            'build/cssplot.full.css': 'src/cssplot.full.less',
            'build/cssplot.group.css': 'src/cssplot.group.less'
        }
      } 
    },
    watch: {
      options: {
        livereload: true
      },
      css: {
        files: ['src/less/*.less'],
        tasks: ['newer:less'],
        options: {
          spawn: false
        }
      },
      html: {
        files: ['*.html'],
        options: {
            livereload: true
        }
      }
    }
  });
  grunt.loadNpmTasks('grunt-contrib-less');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-newer');
  grunt.registerTask('default', ['newer:less','watch']);
};