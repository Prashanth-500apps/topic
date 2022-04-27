<template>
  <div>
    <h1>fetching data from a link</h1>
    <b-form-input type="text" v-model="texts" placeholder="enter text"></b-form-input>
    <b-button @click="res()">submit</b-button>
     <b-table striped hover :items="value" :fields="fields"></b-table> 
    <!-- <b-card v-for="data in items" :key="data.name"></b-card>
    {{data.name}}  -->
  </div>
</template>

<script>
export default {
  name: "DatA",
  data() {
    return {
      value: [],
      data:""
    //   fields: ["name", "domains"],
    };
  },
  methods: {
    async res() {
      const response = await fetch("http://universities.hipolabs.com/search?country=" + this.texts);
       this.value = await response.json();
    },
  },
};
</script>