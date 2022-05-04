<template>
    <div>
         <b-button type="submit" @click="fun" >GetData</b-button>
       <!-- <b-table striped hover :items="items"></b-table> -->
    </div>
</template>

<script>
//import axios from "axios"
export default {
    name:"QuesTion3",
    data(){
        return{
        //   items:[],
        //   fin:"",
        }
    },
    // methods:{
    //     async getData() {
    //        let response = await axios.get("https://www.templatemonster.com/free-html-website-templates/");
    //        let responseText = await response.data;
    //        this.items = JSON.stringify(responseText)
    //        }   
    // },
    methods:{
          fun(){
        const ans = document.getElementsByTagName('*');
        console.log(ans)
          }
    }
}
</script>