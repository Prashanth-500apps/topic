<template>
    <b-row><b-col md="8"><div align="center">
  <b-card>
    <b-form id="form"> Enter First Name:<b-form-input  id="sample1" v-model="value1" placeholder="enter Firstname"></b-form-input>
      Enter LastName:<b-form-input id="sample2" v-model="value2" placeholder="enter Lastname"></b-form-input>
      <b-button @click="Add()">Add</b-button>
      <b-button @click="Delete()">Delete</b-button>
      <b-button @click="Update()">Update</b-button>
    </b-form>
    <b-table striped hover :items="items" :fields="fields">
    </b-table>
    </b-card>
  </div></b-col></b-row>
</template>

<script>
export default {
  name:"QuE3",
  data() {
    return {
      items: [{ firstname: "", lastname: "" }],
      fields: ["firstname", "lastname"],
      value1:"",
      value2:"",
    };
  },
  methods: {
    Add() {
      this.items.push({
        firstname: this.value1,
        lastname: this.value2,
      });
      this.value1="",
      this.value2=""
    },
    Delete() {
      this.items.pop();
    },
    Update(){
     
    }
  },
};
</script>
<style scoped>
div{
    align-content: center;
    padding-left: 65px;
}
</style>