import { Controller } from "stimulus"
import Sortable from 'sortablejs'
import Rails from "@rails/ujs"

export default class extends Controller {
  static targets = [ "id" ]

  connect() {
    this.sortable = Sortable.create(this.element, {
      onEnd: this.end.bind(this),
      ghostClass: "sortable-ghost",
      dragClass: "sortable-drag",
      handle: '.fa-grip-vertical'
    })
  }

  end(event) {
    let url = this.element.dataset.dragUrl
    let data = new FormData()
    let id = event.item.dataset.id
    data.append("position", event.newIndex + 1)
    data.append("klass", event.item.dataset.klass)
    Rails.ajax({
      url: url.replace(":id", id),
      type: 'PATCH',
      data: data
    })
  }
}
