module.exports = (grunt) ->

   #
   # Config
   #
   grunt.initConfig

      #
      # Tasks description
      #
      sass:
       dist:
        options:
          style: 'compressed'

        files:
          'css/main.min.css' : 'sass/main.sass'


      watch:
       sass:
         files: ['sass/*.sass'],
         tasks: ['sass']

       css:
         files: ['css/*.css'],
         tasks: ['noop'],
         options:
            livereload: true

       html:
         files: ['*.html'],
         tasks: ['noop'],
         options:
            livereload: true



      #
      # Load tasks packages
      #
      grunt.loadNpmTasks 'grunt-contrib-sass'
      grunt.loadNpmTasks 'grunt-contrib-watch'


      #
      ## Register task names
      #

      #
      # Default task to watch sass and html
      #
      grunt.registerTask 'default', ['watch']