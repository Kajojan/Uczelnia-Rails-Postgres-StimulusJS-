import { Controller } from "@hotwired/stimulus"
import { csrfFetch } from "lib/csr_fetch"
// Connects to data-controller="course"
export default class extends Controller {
  static targets =["sign_up"]
  connect() {
  }

  sign(){
    csrfFetch(this.sign_upTarget.dataset.url, { method: "POST", headers: { "Accept": "application/json" } })
      .then(()=>window.location.reload())
  }
}
