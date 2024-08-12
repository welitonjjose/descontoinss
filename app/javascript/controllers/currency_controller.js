import { Controller } from '@hotwired/stimulus';
import IMask from 'imask';

export default class extends Controller {
  static targets
      = ['input'];

  connect() {
    const maskOptions = {
      mask: Number,
      scale: 2, // Number of decimals
      thousandsSeparator: '.',
      radix: ',',
      mapToRadix: ['.']
    };
    IMask(this.inputTarget, maskOptions);
  }
}