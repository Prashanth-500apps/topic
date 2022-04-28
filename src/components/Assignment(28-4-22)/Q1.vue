<template>
    <div>
      <b-row><b-col  md="8">
       <b-form-select v-model="value" :options="countries"> </b-form-select><br><br>
       <b-button variant="success" @click="res">Get Data</b-button><br><br></b-col></b-row>
       <b-input-group>
       
        <b-form-input id="filter-input" v-model="filter" type="search" placeholder="Type to Search"></b-form-input>
        <b-input-group-append>
        <b-button :disabled="!filter" @click="filter = ''">Clear</b-button>
        </b-input-group-append>
        </b-input-group>
        <b-form-group v-model="sortDirection" >
        <b-form-checkbox-group v-model="filterOn" >
        <b-form-checkbox value="university_name">university_name</b-form-checkbox>
        <b-form-checkbox value="domains">domains</b-form-checkbox>
        <b-form-checkbox value="website_url">website_url</b-form-checkbox>
        <b-form-checkbox value="isActive">state_province</b-form-checkbox>
        </b-form-checkbox-group>
        </b-form-group>
        <b-container>
         <b-row cols-md="10">
          <b-table :items="items" :fields="fields" :filter="filter" :filter-included-fields="filterOn" @filtered="onFiltered"></b-table>
         </b-row>
        </b-container>
    </div>
</template>

<script>
import axios from "axios";
const { getNames } = require("country-list");
export default {
     name:"QuesTion1",
     data(){
         return{
             fields:[],
             items:[],
             value:"",
             countries:[],
             filter: null,
             filterOn: [],
         };
     },
     computed: {
      sortOptions() {
      return this.fields.filter((f) => f.sortable).map((f) => {
        return { text: f.label, value: f.key };
      });
    },
  },
    mounted() {
        let countries = getNames();
        this.countries = countries.map((row) => {
        return { value: row, text: row };
        });
   },
   methods:{
    async res() {      
      const response = await axios.get("http://universities.hipolabs.com/search?country=" + this.value);
      const responseText = await response.data;
      this.items = responseText.map((row) => {
        return {
          university_name: row.name,
          domains: row.domains,
          website_url: row.web_pages,
          state_province: row.state_province,
        };
      });
     },
     }
}
</script>

<style scoped>
div{
  padding-left: 75px;
}
</style>
