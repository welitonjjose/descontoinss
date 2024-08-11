import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = [ "chart" ]

  connect() {
    const labels = ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'];
    const data = {
      labels: labels,
      datasets: [{
        label: 'Vendas',
        data: [12, 19, 3, 5, 2, 3, 9, 6, 11, 5, 3, 10],
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