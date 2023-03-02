import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["KEKE Transports", "moving you around", "with exotic style","Make your journey unforgetable !"],
      typeSpeed: 50,
      loop: true
    })
  }
}
