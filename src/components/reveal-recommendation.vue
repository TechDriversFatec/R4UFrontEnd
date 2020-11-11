<template>
  <div class="main-container">
    <div class="main-card">
      <p>{{filme}}</p>
      <img class="image" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFjmEJrU0SfR9u6z3lafVLv5nVGoBqbgsVJkVO_CR0WMNEhPwu" />
      <p class="description-sinopsis">
        Um ladrão que rouba segredos corporativos com o uso de uma tecnologia de compartilhamento de sonhos recebe a tarefa oposta, tendo que implantar uma ideia na cabeça de um CEO.
      </p>
      <p><span class="description-bold">Duração:</span>Duração</p>
    </div>
    <!-- <div class="recommendation-container">
      <div class="description">
        <p class="description-bold">{{filme}}</p>
        <p><span class="description-bold">Classificação:</span> 14 anos</p>
        <p><span class="description-bold">Duração:</span>Data</p>
        <p>Ação, Aventura, Sci-Fi</p>
        <p><span class="description-bold">Lançamento:</span> 6 de agosto de 2010</p>
        <p class="description-sinopsis">
          <span class="description-bold">Sinopse:</span> Um ladrão que rouba segredos corporativos com o uso de uma tecnologia de compartilhamento de sonhos recebe a tarefa oposta, tendo que implantar uma ideia na cabeça de um CEO.
        </p>
      </div>
    </div> -->
  </div> 
</template>

<style scoped>
.main-container {
  color: white;
  font-size: 18px;
  padding: 10px;
  height: 100vh;
}

.main-card {
  padding: 30px;
  background-color: #212123;
  margin: 0 auto;
  border-radius: 10px;
  width: 300px;
}

.image {
  width: 200px;
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

.description-sinopsis {
  text-align: left;
}

@media screen and (max-width: 425px) {
  .description {
    width: 400px;
  }

  .image {
    width: 200px;
    margin-right: 0;
  }
}
</style>

<script>

import axios from 'axios'

export default {

  mounted () {
      axios
          .get('localhost:5001/getRecommendation')
          .then(response => (this.filme = response))
  },


  data () {
    return {
       filme:''
    }
  },
  methods: {

  }
}

</script>