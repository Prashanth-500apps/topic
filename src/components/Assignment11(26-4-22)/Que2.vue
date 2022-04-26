<template>
    <div>
        <h1> Multiply And Divide </h1>
        <label >Input1 :</label>
        <input type="text" id="sample1" v-model="value1" placeholder="Enter Input1" /><br>
        <label >Input2: </label>
        <input type="text" id="sample2" v-model="value2" placeholder="Enter Input2" /><br>
        <button type="submit" @click="Multiply" >Multiply</button><br><br>
        <button type="submit" @click="Div">Divide</button>
    </div>
</template>

<script>

export default {
    name:"QuE2",
    data(){
        return{
             
        }
    },
    methods:{
        Multiply(){
            let num1 = document.getElementById("sample1").value
            let num2 = document.getElementById("sample2").value
            let res = num1*num2
            document.write(res)
        },
        Div(){
            let num1 = document.getElementById("sample1").value
            let num2 = document.getElementById("sample2").value
            let res = num1/num2
            document.write(res)
        }
    }
}
</script>
