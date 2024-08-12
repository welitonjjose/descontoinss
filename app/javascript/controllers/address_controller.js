import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="address"
export default class extends Controller {
  static targets
      = ['street', "district", "state", "city"];
  connect() {
  }

  get(event){
    const cep = event.target.value;
    fetch(`https://viacep.com.br/ws/${cep}/json/`)
      .then(response => response.json())
      .then(data => {
          console.log(data)
        this.streetTarget.value = data.logradouro;
        this.districtTarget.value = data.bairro;
        this.stateTarget.value = data.uf;
        this.cityTarget.value = data.localidade;
      });
  }
}
