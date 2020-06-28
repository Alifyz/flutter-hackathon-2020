String getImagePath(String selectedType) {
  switch (selectedType) {
    case 'COMIDA':
      {
        return 'images/food.png';
      }
      break;
    case 'ROUPAS':
      {
        return 'images/clothe.png';
      }
      break;
    case 'MEDICAMENTOS':
      {
        return 'images/medicine.png';
      }
      break;
    default:
      {
        return 'images/food.png';
      }
      break;
  }
}
