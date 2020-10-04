<template>
  <div class="main-container">
    <p>Nossa recomendação é:</p>
    <div class="recommendation-container">
      <img class="image" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFjmEJrU0SfR9u6z3lafVLv5nVGoBqbgsVJkVO_CR0WMNEhPwu" />
      <div class="description">
        <p class="description-bold">A Origem</p>
        <p><span class="description-bold">Classificação:</span> 14 anos</p>
        <p><span class="description-bold">Duração:</span> 2h 28min</p>
        <p>Ação, Aventura, Sci-Fi</p>
        <p><span class="description-bold">Lançamento:</span> 6 de agosto de 2010</p>
        <p class="description-sinopsis">
          <span class="description-bold">Sinopse:</span> Um ladrão que rouba segredos corporativos com o uso de uma tecnologia de compartilhamento de sonhos recebe a tarefa oposta, tendo que implantar uma ideia na cabeça de um CEO.
        </p>
      </div>
    </div>
  </div>    
</template>

<style scoped>
.main-container {
  color: white;
  font-size: 18px;
  padding: 10px;
}

.image {
  width: 200px;
  margin-right: 20px;
}

.recommendation-container {
  display: flex;
  flex-direction: row;
  justify-content: center;
  flex-wrap: wrap;
  font-size: 14px;
}

.description {
  width: 350px;
  text-align: left;
}

.description-bold {
  font-weight: 700;
}

@media screen and (max-width: 425px) {
  .description {
    width: 400px;
    text-align: center;
  }

  .image {
    width: 200px;
    margin-right: 0;
  }
}
</style>