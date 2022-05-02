<template>
    <div>
        <h1>Displaying Unique values of an Array</h1>
        <button type="submit" @click="removeDup">RemoveDuplicates</button>
    </div>    
</template>

<script>
export default{
    name:"QuEE3", 
    data(){
        return{
              array:[1,1,2,2,2,3,4,3,2],     
        }
    },
    methods:{
        removeDup(){
            console.log(this.array=[...new Set(this.array)])
        }
    }
}
</script>