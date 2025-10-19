// pega a room atual (ID)
var r = room;

// escolhe fala por room
switch (r) {
    case Room_1: // use o nome do resource da room (asset) definido no seu projeto
        current_dialog = "Você entrou na sala 1. Prepare-se!";
        break;
    case Room_1_1:
        current_dialog = "Sala 2... mais perigo à frente.";
        break;
    default:
        current_dialog = "Um inimigo genérico murmura algo.";
        break;
}  

dialog_index = 0;
dialog_active = true;
 