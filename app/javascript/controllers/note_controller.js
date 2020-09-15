// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["add", "new", "card"];

  connect() {
    // this.addTarget.textContent = "Hello, Stimulus!";
  }

  displayNote() {
    this.newTarget.classList.toggle("d-none");
    this.addTarget.classList.toggle("d-none");
  }

  edit() {
    // this.noteTarget.classList
  }
}
