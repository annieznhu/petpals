import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="header"
export default class extends Controller {
  static targets = ["title", "index"]

  connect() {
    this.indexTarget.addEventListener("scroll", this._toggle.bind(this))
  }

  _toggle(evt) {
    let height = evt.target.scrollTop;
    if (height > 120) {
      target.add("translate")
    } else {
      target.add("translate-back")
    }
  }
}
