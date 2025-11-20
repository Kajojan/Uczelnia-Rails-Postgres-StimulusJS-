import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="course-preview"
export default class extends Controller {
  static targets = ["name", "code", "previewName", "previewCode"]

  connect() {
  }
  
  preview(){
    if(this.nameTarget.value) this.previewNameTarget.textContent=this.nameTarget.value

    if(this.codeTarget.value) this.previewCodeTarget.textContent=this.codeTarget.value

  }
}
