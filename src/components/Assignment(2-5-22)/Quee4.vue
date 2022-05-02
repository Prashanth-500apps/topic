<template>
    <div>
        <h1>Checking given input is an array or not</h1>
        <button type="submit" @click="result()">REsult</button>
    </div>
</template>

<script>
export default {
    name:"QuEE4",
    data(){
        return{
           array : input => {
           if(toString.call(input) === "[object Array]")
           return true;
           return false;   
         }     
        }
    },
    methods:{
        result(){
            console.log(this.array('Prashanth'));
            console.log(this.array([1, 2, 4, 0]));
        }
    }
}
</script>