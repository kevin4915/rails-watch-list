// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core";
import "bootstrap";

document.addEventListener("turbo:load", () => {
  document.querySelectorAll(".movie-poster").forEach((img) => {
    img.addEventListener("error", function () {
      this.src = this.dataset.fallback;
    });
  });
});
