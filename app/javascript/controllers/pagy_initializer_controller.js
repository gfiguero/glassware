import { Controller } from "@hotwired/stimulus"
import Pagy from "./pagy-module"

// Connects to data-controller="pagy-initializer"
export default class extends Controller {
  connect() {
    Pagy.init(this.element)
  }
}
