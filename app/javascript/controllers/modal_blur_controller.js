import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal-blur"
export default class extends Controller {
  static targets = ["map"]

  blur() {
    this.mapTarget.classList.add("modal-blur")
  }

  clear() {
    this.mapTarget.classList.remove("modal-blur")
  }

}
