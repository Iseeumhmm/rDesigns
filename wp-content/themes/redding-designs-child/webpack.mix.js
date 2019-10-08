let mix = require('laravel-mix');

mix.js('js/app.js', './')
   .sass('sass/base/style.scss', 'sass/base/style.css')
   .sass('sass/modern/style.scss', 'sass/modern/style.css')
   .sass('sass/victorian/style.scss', 'sass/victorian/style.css');
// Modern SCSS