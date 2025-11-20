import { Controller } from "@hotwired/stimulus"
import { csrfFetch } from "lib/csr_fetch"

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
    const gradeDiv = event.currentTarget.closest('[data-grade-target="grade"]');
    const url = gradeDiv.dataset.url;

    csrfFetch(url, { method: "DELETE" })
      .then(() => gradeDiv.remove());
      
  }

  newGradeOpen(){
    this.newFormTarget.classList.remove("hidden")
  }
  newGradeClose(){
    this.newFormTarget.classList.add("hidden")
  }
  
}
