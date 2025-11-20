import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sort"
export default class extends Controller {
  static targets = ["tbody"]
  connect() {
    this.currentColumn = null
    this.direction = "asc"
  }

  sort(event){
    const column = event.currentTarget.dataset.direction
    
    if (this.currentColumn === column) {
      this.direction = this.direction === "asc" ? "desc" : "asc"
    } else {
      this.currentColumn = column
      this.direction = "asc"
    }
    
    event.currentTarget.innerText = this.direction == "asc"? "↓" : "↑"
    this.sortRows(column)

  }

  sortRows(column) {
    const rows = [...this.tbodyTarget.querySelectorAll("[data-sort-row]")]

    rows.sort((a, b) => {
      const valA = a.dataset[column]
      const valB = b.dataset[column]

      if (!isNaN(valA) && !isNaN(valB)) {
        return this.direction === "asc"
          ? valA - valB
          : valB - valA
      }

      return this.direction === "asc"
        ? valA.localeCompare(valB)
        : valB.localeCompare(valA)
    })

    rows.forEach(row => this.tbodyTarget.appendChild(row))
  }

  sort_student(){

  }

}
