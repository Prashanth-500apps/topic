<template>
    <div>
        <b-button type="submit" @click="getData" >GetData</b-button>
        <b-table striped hover :items="items"></b-table>
    </div>
</template>

<script>

export default {
    name:"QuE7",
    data(){
        return{
          items:[]
        }
    },
    methods:{
        async getData() {
           const response = await fetch("http://universities.hipolabs.com/search?country");
           const responseText = await response.json();
           this.items = responseText
           }   
    },
    mounted() {
    this.items.$nextTick(() => {
     document.getElementsByTagName("<a>").innerHTML
  })
    }
}
</script>
