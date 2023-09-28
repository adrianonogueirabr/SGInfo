//textos em maiusculo
document.getElementById('dadosgerais').addEventListener('keyup', (ev) => {
	const input = ev.target;
	input.value = input.value.toUpperCase();
});

document.getElementById('solicitacoes').addEventListener('keyup', (ev) => {
	const input = ev.target;
	input.value = input.value.toUpperCase();
});