import { Controller } from "@hotwired/stimulus"
import { Carousel } from "bootstrap/dist/js/bootstrap.bundle.js";

// Connects to data-controller="carousel"
export default class extends Controller {
  connect() {
    new Carousel (this.element)
  }
}
