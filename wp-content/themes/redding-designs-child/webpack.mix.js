let mix = require('laravel-mix');

mix.js('js/app.js', './')
   .sass('sass/base/style.scss', 'sass/base/style.css')
   .sass('sass//modern/style.scss', 'sass//modern/style.css');

// Modern SCSS