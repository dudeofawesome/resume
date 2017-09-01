import * as Gulp from 'gulp';
import * as Sass from 'gulp-sass';
import * as Mustache from 'gulp-mustache';
import * as Yaml from 'gulp-yaml';
import * as Del from 'del';
import * as Through from 'through2';
import * as Merge from 'gulp-merge';
import * as Sequence from 'run-sequence';
import * as Connect from 'gulp-connect';
import * as Package from './package.json';

Gulp.task(`help`, () => {
  console.log();
  console.log(`You're probably looking for \`gulp build\` or \`gulp dev\``);
  console.log();
});
