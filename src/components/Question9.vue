<template>
  <div align="center">
    <h1>Displaying Form </h1>
    <center>   <b-form>
       <b-row md="4"><b-col md="4"> Name: <b-form-input name="fname" id="sample1" placeholder="Enter name" ></b-form-input></b-col></b-row><br>
      <b-row md="4"> <b-col md="4"> Email: <b-form-input name="email" id="sample2" placeholder="Enter Email" ></b-form-input></b-col></b-row><br>
      <b-row md="4"><b-col md="4"> Age: <b-form-input number="age" id="sample3" placeholder="Enter age" ></b-form-input></b-col></b-row><br>
      <b-row md="4"> <b-col md="4"> Number: <b-form-input number="number" id="sample4" placeholder="Enter Number" ></b-form-input></b-col></b-row>
       </b-form>
       <br>
       <b-button type="submit" @click="result" >Submit</b-button>
       </center>
  </div>
</template>

<script>

export default {
  name:"QuestioN9",
  data(){
    return{
       
    }
  },
  methods:{
     result() {
       document.write(document.getElementById("sample1").value+" "+document.getElementById("sample2").value+" "+document.getElementById("sample3").value+" "+document.getElementById("sample4").value);
        }
  }
}
</script>

<style>
 b-form:{
    padding-left: 200px;
}
</style>