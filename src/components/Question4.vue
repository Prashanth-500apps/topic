<!--<template>
<div>
<h3>fetch api</h3>
<button @click="getData()">click</button>
<b-card v-for="value in posts" :key="value.domains" class="mb-2">
  <b-card-text>name: {{ value.chartName}} </b-card-text>
  <b-card-text>Email: {{ value.description }}</b-card-text>
</b-card>
</div>
</template>

<script>
export default {
  name: "QuestioN4",
  data() {
    return {
      value:"",
      posts: " ",
      fields: ["chartName", "description"],
    };
  },
  methods: {
    async getData() {
      let response = await fetch("https://api.coindesk.com/v1/bpi/currentprice.json" + this.value);
      this.posts = await response.json();
    },
  },
  created() {
    this.getData();
  },
};
</script> -->

<template>
  <div>
    <h1>Axios using in promise</h1>
    
    <b-card v-for="value in res" :key="value.name">
      <b-card-text>name: {{ value.name }} </b-card-text>
      <p>country: {{ value.country }}</p>
      <p>web_pages: {{ value.web_pages }}</p>
    </b-card>
    <button @click="promisee()">ClickMe</button>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "ProM",
  data() {
    return {
      res:"",
      fields: ["country", "web_pages", "name"],
    };
  },
  methods: {
    promisee() {
      new Promise((rejection) => {
        axios.get("http://universities.hipolabs.com/search?country=india").then((response) => { this.res = response;  })
          .catch((error) => {
            rejection(error);
          });
      });
    },
  },
};
</script>