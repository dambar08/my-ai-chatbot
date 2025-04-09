// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import { initializeAppShell } from "./src/index";

document.addEventListener("DOMContentLoaded", function () {
  initializeAppShell();
});
