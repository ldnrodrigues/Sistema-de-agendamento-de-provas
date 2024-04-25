  import { getDatabase, ref, push } from "https://www.gstatic.com/firebasejs/10.11.0/firebase-database.js";

  const firebaseConfig = {
    apiKey: "SUA_API_KEY",
    authDomain: "SEU_AUTH_DOMAIN",
    projectId: "SEU_PROJECT_ID",
    storageBucket: "SEU_STORAGE_BUCKET",
    messagingSenderId: "SEU_SENDER_ID",
    appId: "SEU_APP_ID",
    measurementId: "SEU_MEASUREMENT_ID"
  };

  // Inicialize o Firebase Realtime Database
  const database = getDatabase();

  // Referência para a coleção de reservas
  const reservasRef = ref(database, 'reservas');

  // Função para enviar os dados do formulário para o Firebase
  function enviarReserva() {
    const nome = document.getElementById('nome').value;
    const email = document.getElementById('email').value;
    const telefone = document.getElementById('telefone').value;
    const data = document.getElementById('data').value;
    const horario = document.getElementById('horario').value;
    const numPessoas = document.getElementById('numPessoas').value;
    const observacoes = document.getElementById('observacoes').value;

    // Cria um novo nó com os dados da reserva
    const novaReservaRef = push(reservasRef);
    novaReservaRef.set({
      nome: nome,
      email: email,
      telefone: telefone,
      data: data,
      horario: horario,
      numPessoas: numPessoas,
      observacoes: observacoes
    }).then(() => {
      alert('Reserva enviada com sucesso!');
      // Limpa os campos do formulário após o envio
      document.getElementById('nome').value = '';
      document.getElementById('email').value = '';
      document.getElementById('telefone').value = '';
      document.getElementById('data').value = '';
      document.getElementById('horario').value = '';
      document.getElementById('numPessoas').value = '';
      document.getElementById('observacoes').value = '';
    }).catch((error) => {
      console.error('Erro ao enviar reserva:', error);
      alert('Erro ao enviar reserva. Por favor, tente novamente mais tarde.');
    });
  }
