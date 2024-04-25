const firebaseConfig = {
  apiKey: "AIzaSyCUzI1hPGrthwJOSMYSW7QUP9XxpbrX7ns",
  authDomain: "projeto-hamburgueria-dbc91.firebaseapp.com",
  projectId: "projeto-hamburgueria-dbc91",
  storageBucket: "projeto-hamburgueria-dbc91.appspot.com",
  messagingSenderId: "265377743511",
  appId: "1:265377743511:web:e13b2280af8d4d0c3d1fd2",
  measurementId: "G-PS7NW4JNXC"
};

// Inicialize o Firebase Realtime Database
const database = firebase.database();

// Referência para a coleção de reservas
const reservasRef = database.ref('reservas');

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
  const novaReservaRef = reservasRef.push();
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

