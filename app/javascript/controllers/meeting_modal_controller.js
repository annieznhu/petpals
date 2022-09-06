import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="meeting-modal"
export default class extends Controller {
  static targets = ['form', 'content', 'close']
  static values = { matchId: Number }

  connect() {
    this.csrf = document.querySelector('[name="csrf-token"]').content
  }

  submit(evt) {
    evt.preventDefault();
    const options = {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-TOKEN": this.csrf },
      body: new FormData(this.formTarget)
    }

    fetch(`/matches/${this.matchIdValue}/meetings`, options)
      .then(response => response.json())
      .then((data) => {
        if (data.status === 'failure') {
          this.contentTarget.outerHTML = data.html
          return
        }
        this.contentTarget.outerHTML = data.html
        this.closeTarget.click();
      })
  }
}
