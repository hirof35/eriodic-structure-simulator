// app/javascript/controllers/filter_controller.js
import { Controller } from "@hotwire/stimulus"

export default class extends Controller {
  static targets = ["element"]

  highlight(event) {
    const selectedCategory = event.currentTarget.dataset.category

    this.elementTargets.forEach(el => {
      if (selectedCategory === "all" || el.dataset.category === selectedCategory) {
        el.classList.remove("dimmed")
        el.classList.add("active")
      } else {
        el.classList.add("dimmed")
        el.classList.remove("active")
      }
    })
  }
}