import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="layout"
export default class extends Controller {
  static targets = [ "navbarBackdrop", "navbarMenu" ]

  openNavbarMenu(event) {
    event.preventDefault()

    this.navbarBackdropTarget.classList.remove('hidden')
    this.navbarMenuTarget.classList.remove('hidden')
  }

  closeNavbarMenu(event) {
    event.preventDefault()

    this.navbarBackdropTarget.classList.add('hidden')
    this.navbarMenuTarget.classList.add('hidden')
  }
}
