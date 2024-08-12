import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static values = { labels: Array, qtd: Array }
  static targets = [ "chart" ]

  connect() {
    const labels = this.labelsValue;
    const data = {
      labels: labels,
      datasets: [{
        label: 'Funcionários',
        data: this.qtdValue,
        fill: false,
        borderColor: 'rgb(75, 192, 192)',
        tension: 0.1
      }]
    };

    const config = {
      type: 'line',
      data: data,
      options: {
        scales: {
          y: {
            beginAtZero: true
          }
        }
      }
    };

    const ctx = this.chartTarget.getContext('2d');
    const myChart = new Chart(ctx, config);
  }
}