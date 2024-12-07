// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import jquery from "jquery"


window.jQuery = jquery;
window.$ = jquery;

$(document).on("turbo:load", () => {
  console.log("turbo!");
});