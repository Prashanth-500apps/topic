<template>
    <div>
        <b-button type="submit" @click="getData" >GetData</b-button>
        <b-table striped hover :items="items"></b-table>
        {{items}}
    </div>
</template>

<script>
import axios from "axios"
export default {
    name:"QuE7",
    data(){
        return{
          items:[],
          fin:"",
        }
    },
    methods:{
        async getData() {
           let response = await axios.get("https://www.templatemonster.com/free-html-website-templates/");
        //    let responseText = await response.json();
           this.items = JSON.stringify(response)
           }   
    },
    // mounted() {
    //  this.fin = document.getElementsByTagName("a")
    //  console.log(this.fin)
    // }
}
</script>