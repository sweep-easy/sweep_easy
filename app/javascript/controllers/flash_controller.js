import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash"
export default class extends Controller {
  connect() {
    this.element.classList.remove("opacity-0")
    setTimeout(() => this.remove(), 4000)
  }

  remove(event) {
    this.element.classList.add("opacity-0")
    setTimeout(() => this.element.remove(), 500)
  }
}
