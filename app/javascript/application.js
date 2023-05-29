// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "trix"
import "@rails/actiontext"
import jquery from 'jquery';
window.jQuery = jquery;
window.$ = jquery;

import "bootstrap/dist/js/bootstrap.bundle.js"
const bootstrap = require("bootstrap/dist/js/bootstrap.bundle.js")
const popoverElements = document.querySelector('[data-bs-toggle="popover"]')
if (popoverElements) new bootstrap.Popover(popoverElements, { trigger: 'hover' })
window.bootstrap = bootstrap;
