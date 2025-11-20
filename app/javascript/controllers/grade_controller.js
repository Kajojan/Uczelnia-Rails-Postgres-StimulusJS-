import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="grade"
export default class extends Controller {
  static targets = ["form", "grade", "newForm"]

  open() {
    this.formTarget.classList.remove("hidden")
  }

  close() {
    this.formTarget.classList.add("hidden")
  }

  remove(event) {
    event.preventDefault()
    console.log(this.gradeTarget.dataset);
    
    fetch(this.gradeTarget.dataset.url, { method: "DELETE", headers: { "Accept": "application/json" } })
      .then(() => this.gradeTarget.remove())
  }

  newGradeOpen(){
    this.newFormTarget.classList.remove("hidden")
  }
  newGradeClose(){
    this.newFormTarget.classList.add("hidden")
  }
  
}
