//
// Fansoro Gulp.js
// (c) Sergey Romanenko <https://github.com/Awilum>
//

var Promise = require("es6-promise").Promise,
    gulp = require('gulp'),
    less = require('gulp-less'),
    autoprefixer = require('gulp-autoprefixer'),
    csso = require('gulp-csso');

gulp.task('process-css', function() {
      return gulp.src('themes/default/assets/less/fansoro.less')
        .pipe(less())
        .pipe(autoprefixer({
            browsers: ['last 2 versions'],
            cascade: false
        }))
        .pipe(csso())
        .pipe(gulp.dest('themes/default/assets/css/'));
});

gulp.task('default', ['process-css'], function() { });
