String getImagePath(String selectedType) {
  switch (selectedType) {
    case 'COMIDA':
      {
        print('comida');
        return 'images/food.png';
      }
      break;
    case 'ROUPAS':
      {
        print('roupa');
        return 'images/clothe.png';
      }
      break;
    case 'MEDICAMENTOS':
      {
        print('medicamento');
        return 'images/medicine.png';
      }
      break;
    default:
      {
        print('default');
        return 'images/food.png';
      }
      break;
  }
}
