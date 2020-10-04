<template>
  <div id="app">
    <img alt="R4U logo" @click="step = 1" class="logo" src="./assets/logo-r4u.png">
    <select-genre v-if="step === 1" @nextStep="nextStep()" />
    <list-movies v-else-if="step === 2" @nextStep="nextStep()" />
    <reveal-recommendation v-else />
    <div class="disclaimer">
      <!-- <p>R4U - Todos os direitos reservados. FATEC São José dos Campos</p> -->
    </div>
  </div>
</template>

<script>
import selectGenre from './components/select-genre.vue'
import listMovies from './components/list-movies.vue'
import revealRecommendation from './components/reveal-recommendation.vue'

export default {
  name: 'App',
  components: {
    selectGenre,
    listMovies,
    revealRecommendation
  },
  data () {
    return {
      step: 1
    }
  },
  methods: {
    nextStep () {
      this.step++;
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

.logo {
  height: 180px;
  margin-bottom: 40px;
}

.disclaimer {
  position: absolute;
  bottom: 0;
  padding: 10px;
}
</style>
