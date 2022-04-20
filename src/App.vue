<template>
  <div id="app">
    <router-view />
    <!-- <Question6 refs="world" name="saiPrashanth">{{name}}</Question6> -->
    <button-submit type="submit" @click="result()">Your Profile</button-submit> 
  </div>
</template>

<script>
//import Question6 from './components/Question6.vue'

export default {
  name: 'App',
  components: {
  // Question6
  },
  mounted: function(){
    this.name = this.$refs.name
  },
  methods:{
  result(){
    document.write("Hellooo");
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
</style>
