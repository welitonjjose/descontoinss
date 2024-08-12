import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calc"
export default class extends Controller {
  static targets
      = ['discount', 'input'];
  connect() {
  }

  get(event){
    let value = event.target.value.replace(".", "").replace(",", ".");
    const salary = {
      value: parseFloat(value),
      discounts: 0
    };


    // faixa 1
    if(salary.value <= 1045) {
     salary.discounts = this.range1(salary.value);
    }

    // faixa2 1.045,01 a R$ 2.089,60
    if(salary.value > 1045 && salary.value <= 2089.60) {
      let rest = salary.value - 1045;

      salary.discounts = this.range1(1045);
      salary.discounts += this.range2(rest);
    }

    // faixa3 2.089,61 até R$ 3.134,40
    if(salary.value > 2089.60 && salary.value <= 3134.40) {
      let rest = salary.value - 2089.60;
      salary.discounts = this.range1(1045);
      salary.discounts += this.range2(1044,60);
      salary.discounts += this.range3(rest);
    }

    // faixa4 R$ 3.134,41 até R$ 6.101,06
    if(salary.value > 3134.40 && salary.value <= 6101.06) {
      let rest = salary.value - 3134.40;
      salary.discounts = this.range1(1045);
      salary.discounts += this.range2(1044,60);
      salary.discounts += this.range3(1044,80);
      salary.discounts += this.range4(rest);
    }

    this.discountTarget.innerHTML = `Descontos: R$ ${salary.discounts.toFixed(2)}`;
    this.inputTarget.value = salary.discounts
  }

  range1(amount) {
    return amount * 0.075
  }
  range2(amount) {
    return amount * 0.09
  }
  range3(amount) {
    return amount * 0.12
  }
  range4(amount) {
    return amount * 0.14
  }
}
