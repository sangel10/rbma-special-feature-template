gulp = require('gulp')
gutil = require('gulp-util')
coffee = require('gulp-coffee')
concat = require('gulp-concat')
uglify = require('gulp-uglify')
sass = require('gulp-sass')


gulp.task 'scripts', ->
  gulp.src('./src/scripts/**/*.coffee')
    .pipe(coffee(bare: true).on('error', gutil.log))
    .pipe(concat('index.js')).on('error', gutil.log)
    .pipe(uglify()).on('error', gutil.log)
    .pipe(gulp.dest('./dist/scripts/'))


gulp.task 'styles', ->
  gulp.src('./src/styles/main.scss')
    .pipe(sass()).on('error', gutil.log)
    .pipe(gulp.dest('./dist/styles/'))


gulp.task 'views', ->
  gulp.src('./src/views/**/*.html')
    .pipe(gulp.dest('./dist/views'))


gulp.task 'watch', ->
  gulp.watch('./src/scripts/**/*.coffee', ['scripts'])
  gulp.watch('./src/styles/**/*.scss', ['styles'])
  gulp.watch('./src/views/**/*.html', ['views'])


gulp.task 'build', ['scripts', 'styles', 'views']


gulp.task 'default', ['build', 'watch']
