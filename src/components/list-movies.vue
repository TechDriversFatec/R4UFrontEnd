<template>
  <div class="main-container">
    <p>Liste alguns filmes de {{genre.toLowerCase()}} que você goste, para sabermos um pouco sobre você:</p>
    <div class="input-container">
      <input placeholder="Filme 1" class="movie-input" />
      <input placeholder="Filme 2" class="movie-input" />
      <input placeholder="Filme 3" class="movie-input" />
      <input placeholder="Filme 4" class="movie-input" />
      <input placeholder="Filme 5" class="movie-input" />
      <button class="recommend-button" @click="sendMovies()">Ver recomendação</button>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    genre: {
      type: String,
      default: 'Ação'
    }
  },
  methods: {
    sendMovies () {
      this.$emit('nextStep')
    }
  }
}
</script>

<style scoped>
.main-container {
  color: white;
  font-size: 18px;
  padding: 10px;
}

.input-container {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.movie-input {
  height: 35px;
  margin-bottom: 10px;
  border-radius: 5px;
  border: transparent;
  padding: 2px 10px;
  width: 300px;
}

.recommend-button {
  background-color: green;
  color: white;
  border-radius: 5px;
  border: transparent;
  height: 35px;
  font-size: 14px;
  width: 325px;
}
</style>