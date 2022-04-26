<template>
  <div>
    <h1>Displaying Given details in Alphabetical and reverse Order</h1>
    <button type="submit" @click="sort">Alpha</button><br><br>
    <button type="submit" @click="reverse">Reverse</button>
      <p v-for="user in users" :key="user.id"></p>
  </div>
</template>

<script>
export default {
  name: "QuE1",
  data() {
    return {
      users: [
        {name:"500apps",id:1},
        {name:"Technologies",id:2},
        {name:"Agile",id:3},
        {name:"Mantra",id:4},
        {name:"Clockl",id:5},
        {name:"CRM",id:6},
        {name:"500apps",id:7},
      ],
    };
  },
  methods: {
    sort() {
      let field = "name";
     let res = this.users.sort((a, b) => (a[field] || "").toString().localeCompare((b[field] || "").toString()));
     document.write(JSON.stringify(res))
    },
      reverse() {
      let field = "name";
      let res = this.users.sort((a, b) => (a[field] || "").toString().localeCompare((b[field] || "").toString()));
      document.write(JSON.stringify(res.reverse()));
    },
  },
};
</script>