<template>
  <div>
    <center>
      <table border="3px">
        <thead>
          <tr>
            <th>Name</th>
            <th>Id</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(table_data, index) in table_data" :key="table_data.index">
            <td>{{ table_data.name }}</td>
            <td>{{ index }}</td>
          </tr>
        </tbody>
      </table>
    </center>
    <!-- <b-table>
        <div v-for="(table_data,index) in table_data" :key="index" ></div>
        {{table_data.name}} --- {{index}}
    </b-table> -->
  </div>
</template>

<script>
export default {
  name: "QuesT1",
  data() {
    return {
      table_data: [
        { name: " Agile CRM", description: " A company of excellence" },
        { name: "mantra technologies", description: "500apps" },
        { name: "500apps Python", description: "Backend built using python" },
        { name: "500apps infinity", description: "Builtusing vue JS" },
      ],
    };
  },
};
</script>

<style scoped>
table {
  font-family: arial;
  border-collapse: collapse;
  width: 60%;
  text-align: center;
}
td,th {
  border: 5px solid #dddddd;
  text-align: center;
  padding: 8px;
}
</style>
