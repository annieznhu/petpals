import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="header"
export default class extends Controller {
  // static targets = ["title", "index"]

  connect() {
    this.element.addEventListener("scroll", this._toggle.bind(this))
  }

  _toggle(evt) {
    const height = evt.target.scrollTop;
    const header = document.querySelector('#title-index')
    const wrapper = '....'

    if (height > 100) {
      header.classList.add('translated')

      return
    }

    header.classList.remove('translated')


    // if (height > 120) {
    //   target.add("translate")
    // } else {
    //   target.add("translate-back")
    // }
  }
}
