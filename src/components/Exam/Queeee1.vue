<template>
  <div>
    <b-card>
    <b-form id="form">
      Enter product Name:<b-form-input  id="sample1" placeholder="enter Product name"></b-form-input>
      Enter Product Price:<b-form-input id="sample2" placeholder="enter Product Price"></b-form-input>
      Enter Product category:<b-form-input id="sample3" placeholder="enter Product category"></b-form-input>
      <b-button @click="Add()">Add</b-button>
    </b-form>
    <b-table striped hover :items="items" :fields="fields"></b-table>
    </b-card>
  </div>
</template>

<script>
export default {
    name:"QuestION1",
  data() {
    return {
      items: [{ Productname: "", Productprice: "" , productcategory:" " }],
      fields: ["Productname", "ProductPrice" , "productcategory"],
    };
  },
  methods: {

    Add() {
      this.items.push({
        Productname: document.getElementById("sample1").value,
        Productprice: document.getElementById("sample2").value,
        productcategory: document.getElementById("sample3").value
      });
    },
   
  },
};
</script>