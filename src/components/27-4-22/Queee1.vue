<template>
  <div>
    <b-card>
    <b-form id="form">
      Enter First Name:<b-form-input  id="sample1" placeholder="enter First name"></b-form-input>
      Enter LastName:<b-form-input id="sample2" placeholder="enter Last name"></b-form-input>
      <b-button @click="Add()">Add</b-button>
    </b-form>
    <b-table striped hover :items="items" :fields="fields"></b-table>
    </b-card>
  </div>
</template>

<script>
export default {
    name:"QuestiON1",
  data() {
    return {
      items: [{ firstname: "", lastname: "" }],
      fields: ["firstname", "lastname"],
    };
  },
  methods: {

    Add() {
      this.items.push({
        firstname: document.getElementById("sample1").value,
        lastname: document.getElementById("sample2").value,
      });
    },
   
  },
};
</script>