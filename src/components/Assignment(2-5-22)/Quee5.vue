<template>
    <div>
        <h1>Displaying array elements in single string</h1>
        <button type="submit" @click="result()">Result</button>
    </div>
</template>

<script>

export default {
    name:"QuEE5",
    data(){
        return{
        myColor:["Red", "Green", "White", "Black"],
        }
    },
    methods:{
        result(){
        console.log(this.myColor.toString());
        console.log(this.myColor.join(" "));
        console.log(this.myColor.join("+"));
    }
    }
}
</script>