import { Controller } from '@hotwired/stimulus';
import IMask from 'imask';

export default class extends Controller {
  static targets
      = ['input'];

  connect() {
    const maskOptions = {
      mask: '(00)0.0000-0000', // Example mask for a date
    };
    IMask(this.inputTarget, maskOptions);
  }
}