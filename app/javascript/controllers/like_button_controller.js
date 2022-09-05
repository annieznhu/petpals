import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["icon"]

  connect() {
    console.log("connected")
  }

  like() {
    this.iconTarget.classList.add("likedpaw")
    this.iconTarget.removeAttribute("id")
  }
}
