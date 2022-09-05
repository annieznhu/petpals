import { Controller } from "@hotwired/stimulus"
// Import flatpickr function
import flatpickr from "flatpickr"

export default class extends Controller {
  // retrieve the targets from the DOM
  static targets = [ 'dateInput' ]

  // On controller's connection, call the flatpickr
  // function in order to build the calendars
  connect() {
    flatpickr(this.dateInputTarget, {
      mode: 'single',
      enableTime: true,
      dateFormat: "Y-m-d H:i"
    })
  }
}
