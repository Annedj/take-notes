// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
// <h1 data-target="hello.output"></h1>
//{" "} </div>;

import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["add", "new", "list", "content", "card", "edit", "sort"];
  connect() {
    // console.log('document.cookie', document.cookie);
    // let theme;
    // if (window.matchMedia && window.matchMedia('(prefers-color-scheme: light)').matches) {
    //   theme = 'light';
    // } else {
    //   theme = 'dark';
    // };
    // document.cookie = `theme=${theme}`;
    // console.log('document.cookie2', document.cookie);
  }
  displayNote() {
    this.newTarget.classList.toggle("d-none");
    this.addTarget.classList.toggle("d-none");
  }
  onPostSuccess(event) {
    let [data, status, xhr] = event.detail;
    this.listTarget.innerHTML += xhr.response;
    this.contentTarget.value = "";
  }
  editNote(event) {
    //   console.log(event.currentTarget);
    //   this.editTarget.classList.toggle("d-none");
    //   // this.cardTarget.classList.toggle("d-none");
  }
  sortNotes(event) {
    //   event.currentTarget.classList.toggle("active");
    //   console.log(event.currentTarget.sort);
    //   console.log(this.sort);
  }
  get sort() {
    //   console.log(this.data);
    //   return this.data.getAttribute("data-note-sort");
  }
}
