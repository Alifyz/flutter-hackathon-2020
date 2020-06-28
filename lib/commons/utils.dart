String getImagePath(String selectedType) {
  switch (selectedType) {
    case 'FOOD':
      {
        return 'images/food.png';
      }
      break;
    case 'CLOTHE':
      {
        return 'images/clothe.png';
      }
      break;
    case 'MEDICINE':
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
