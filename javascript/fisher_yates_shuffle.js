const shuffleArray = (array) => {
  for (let i = array.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    const temp = array[i];
    array[i] = array[j];
    array[j] = temp;
  }

  return array;
};

const array = ["Alison Becker", "Andrew Robertson", "Trent A. Arnold", "Jordan Henderson", "Sadion Mané", "Diogo Jota"];
console.log(shuffleArray(array));
