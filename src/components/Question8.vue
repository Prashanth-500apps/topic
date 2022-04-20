<template>
  <div align="center">
   <b-row><b-col md="6"><b-table :items="items" :fields="fields" align="center"></b-table></b-col></b-row>
  </div>
</template>

<script>
  export default {
      name:"QuestioN8",
    data() {
      return {
        fields:["email","id","name"],
        items: [{ email: "Eliseo@gardner.biz", id: 1, name: "id labore ex et quamlaborum",},
                { email: "Jayne_Kuhic@sydney.com", id: 2, name: "quo vero reiciendisvelitsimiliqueearum",},
                { email: "Nikita@garfield.biz",id: 3, name: "odio adipisci rerumaut animi",},
                { email: "Lew@alysha.tv", id: 4, name: "alias odio sit" }]
      }
    }
  }
</script>

<style scoped>
 b-table{
      font-family: fantasy;
      text-align: center;
      color: white;
      margin-top: 70px;
      border: 50px;
}
</style>