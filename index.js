function atualizarHorariosDisponiveis() {
    var select = document.querySelector('select');
    var horario19 = select.querySelector('option[value="19:00"]');
    var barbeiro = document.querySelector('#barbeiro');
  
    // Obtém o dia da semana
    var hoje = new Date();
    var diaSemana = hoje.getDay(); // 0 = domingo, 1 = segunda, 2 = terça, etc.
  
    // Lista de barbeiros disponíveis
    var barbeiros = ['Fulano 1', 'Fulano 2', 'Fulano 3', 'Fulano 4', 'Edson Arújo'];
  
    // Remove a opção de 19:00 nas segundas e quartas-feiras usando switch case
    switch (diaSemana) {
      case 1:
        horario19.disabled = true;
        horario19.style.display = 'none';
        barbeiro.disabled = true;
        break;
      case 3:
        horario19.disabled = true;
        horario19.style.display = 'none';
        barbeiro.disabled = false;
        break;
      default:
        horario19.disabled = false;
        horario19.style.display = '';
        barbeiro.disabled = false;
    }
  
    // Preenche o seletor de barbeiros com os nomes da lista
    barbeiro.innerHTML = '';
    for (var i = 0; i < barbeiros.length; i++) {
      var option = document.createElement('option');
      option.textContent = barbeiros[i];
      option.value = barbeiros[i];
      barbeiro.appendChild(option);
    }
  }
  