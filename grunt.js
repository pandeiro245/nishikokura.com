module.exports = function(grunt){
  grunt.initConfig({
      coffee: {
          compile: {
              files: {
                  'public/js/*.js': ['coffee/*.coffee'],
              }
          },
      },
      watch: {
          files: ['coffee/*.coffee'],
          tasks: 'coffee'
      }
  });
   
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.registerTask('default', 'coffee'); 
}

