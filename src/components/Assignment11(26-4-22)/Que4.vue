<template>
  <div>
    <h1>Search in Array</h1>
    Text:<p><b-row><b-col md="4"><b-form-input type="text" placeholder="Enter text" v-model="output"></b-form-input></b-col></b-row></p>
    <b-button type="submit" @click="res">Result</b-button>
  </div>
</template>

<script>
export default {
  name: "QuE4",
  data() {
    return {
      list: ['orange', 'red', 'blue', 'black', 'white' ],
      output: "",
    };
  },
  methods: {
    res() {
       var result = this.list.filter((row) => { 
           return row.includes(this.output)
       });
       document.write(result)
  },
}
}
</script>

<style scoped>
 p{
    align-content: center;
    padding-left: 675px;
}
</style>