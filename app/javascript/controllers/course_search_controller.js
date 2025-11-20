import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="course-search"
export default class extends Controller {
    static targets = ["input", "card", "sort"]
    

  connect() {
  }

  search() {
    
    const query = this.inputTarget.value.toLowerCase()
    
    this.cardTargets.forEach((card) => {
      const text = card.innerText.toLowerCase()
      
      card.style.display = text.includes(query) ? "" : "none"
    })
  }

  sort(){
    const sorted = {
      "name_asc": (a,b)=>b.dataset.name.localeCompare(a.dataset.name),
      "name_desc":(a,b)=>a.dataset.name.localeCompare(b.dataset.name) ,
      "code_asc": (a,b)=>b.dataset.code.localeCompare(a.dataset.code),
      "code_desc": (a,b)=> a.dataset.code.localeCompare(b.dataset.code)
    }
      const option = this.sortTarget.value
      const list = [...this.cardTargets]      
      list.sort(sorted[option]).forEach(el=> this.element.querySelector('[data-course-search-target="list"]').appendChild(el))
  }

}
