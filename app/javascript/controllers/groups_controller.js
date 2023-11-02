import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="groups"
export default class extends Controller {
  static targets = ["groups_select"]
  connect() {
    this.loadData();
  }

  loadData() {
    fetch("/groups.json?items=all")
      .then(response => response.json())
      .then(data => {
        this.updateSelect(data);
      });
  }

  updateSelect(data) {
    const select = this.groups_selectTarget;
    select.innerHTML = "";

    data.forEach(option => {
      const optionElement = document.createElement("option");
      optionElement.value = option.id;
      optionElement.textContent = option.name;
      select.appendChild(optionElement);
    });
  }
}
