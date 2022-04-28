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
    name:"QuesTion3",
    data(){
        return{
          items:[],
          fin:"",
        }
    },
    methods:{
        async getData() {
           let response = await axios.get("https://www.templatemonster.com/free-html-website-templates/");
           let responseText = await response.data;
           this.items = JSON.stringify(responseText)
           }   
    },
    mounted() {
     this.fin = document.getElementsByTagName("a")
     console.log(this.fin)
    }
}
</script>