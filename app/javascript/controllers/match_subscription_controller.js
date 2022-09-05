import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="match-subscription"
export default class extends Controller {
  static values = { matchId: Number, userId: Number }
  static targets = ["messages", "message"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "MatchChannel", id: this.matchIdValue },
      { received: data => this.#insertMessageAndScrollDown(data)}
    )
  }

  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    this.channel.unsubscribe()
  }

  #insertMessageAndScrollDown(data) {
    if (this.userIdValue === data.user_id) {
      this.messagesTarget.insertAdjacentHTML("beforeend", data.html)
      const lastMessage = this.messageTargets.slice(-1)[0]
      lastMessage.classList.add('message-current-user')
      lastMessage.classList.remove('message-other-user')
    } else {
      this.messagesTarget.insertAdjacentHTML("beforeend", data.html)
      const lastMessage = this.messageTargets.slice(-1)[0]

      lastMessage.classList.add('message-other-user')
      lastMessage.classList.remove('message-current-user')
    }

    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
}
