<template>
    <div>  
        <h1>Axios With Promises</h1>   
        {{info}}
        </div>
</template>
        <script>
        var axios = require("axios").default
        export default {
            name:"PromiseS",
            data(){
                return{
                    info:" " ,
                }
                   },
          mounted(){
             new Promise((reject) => { 
                axios.get("https://www.templatemonster.com/free-html-website-templates/")
                .then((response) => {this.info = response})
                .catch((error) => { reject(error); });
            } 
             )},                
                    }
        </script>