<template>
  <div class="main-container">
    <p>Selecione um gênero do qual você gostaria de uma recomendação:</p>
    <div class="select-container">
      <select class="select-genre" name="genre">
        <option v-for="genre in genreList" :key="genre" :value="genre">
          {{genre}}
        </option>
      </select>
      <button class="select-button" @click="selectGenre">
        Selecionar
      </button>
    </div>
  </div>    
</template>

<script>
export default {
  data () {
    return {
      genreList: [
      'Ação',
      'Drama',
      'Comédia',
      'Romance'
      ]
    }
  },
  methods: {
    selectGenre () {
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

.select-container {
  display: flex;
  flex-direction: row;
  justify-content: center;
}

.select-genre {
  border-radius: 5px;
  border: transparent;
  padding: 5px 2px;
  width: 290px;
  height: 35px;
  margin-right: 5px;
}

.select-button {
  border-radius: 5px;
  border: transparent;
  background-color: white;
  font-weight: 700;
}
</style>