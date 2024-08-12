import { Controller } from '@hotwired/stimulus';
import IMask from 'imask';

export default class extends Controller {
  static targets
      = ['input'];

  connect() {
    const maskOptions = {
      mask: '000.000.000-00', // Example mask for a date
    };
    IMask(this.inputTarget, maskOptions);
  }
}