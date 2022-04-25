<!--<template>
<div>
    <h1> Search For the Array</h1>
    Text:<b-form-input type="text" placeholder="Enter text" v-model="output"></b-form-input>
    <b-button type="submit" @click="res" >Result</b-button>
</div>
</template>

<script>

export default {
    name:"QuestioN1",
    data(){
        return{
            array_names : ["agile","crm","mantra","technologies","500apps","infinity"],
            output:"",
        }
    },
    methods:{
            res(){
             if(this.output){
             return this.array_names.filter((item)=>{
             return this.output.toLowerCase().split(' ').every(gi => item.title.toLowerCase().includes(gi))
      })
      }else{
        return this.array_names;
      }
    }
        }

    }


</script> 

<template>
  <div>
    <input type="text" id="Search" @keyup="search()" />

    <ul id="UL">
      <li>agile</li>
      <li>crm</li>
      <li>mantra</li>
      <li>technologies</li>
      <li>500apps</li>
      <li>Infinity</li>
    </ul>
  </div>
</template>

<script>
export default {
  name: "QuestioN1",
  data() {
    return {};
  },
  methods: {
    search() {
      var input, filter, ul, li, a, i, txtValue;
      input = document.getElementById("Search");
      filter = input.value.toUpperCase();
      ul = document.getElementById("UL");
      li = ul.getElementsByTagName("li");
      for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerHTML;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          li[i].style.display = "";
        } else {
          li[i].style.display = "none";
        }
      }
    },
  },
};
</script> -->

<template>
  <div><center>
    <b-form align="center">
    <b-row><b-col md="6"><b-form-input type="text" v-model="value" placeholder="Search" ></b-form-input></b-col></b-row>
      <b-button type="submit" @click="res">Filter</b-button><br><br>
      <b-button type="submit" @click="mapp">Map </b-button><br><br>
      <b-button type="submit" @click="fore">ForEach </b-button><br><br>
      <b-button type="submit" @click="fin">Find </b-button><br><br>
    </b-form></center>
  </div>
</template>

<script>
export default {
  name: "QuestioN1",
  data() {
    return {
      array: ["agile", "crm", "mantra", "technologies", "500apps", "infinity"],
      value: "",
    };
  },
  methods: {
    res() {
      var out = this.array.filter((row) => {
        return row.includes(this.value);
      });
      document.write(out);
    },
    mapp() {
      var result = this.array.map(row => {
        return row;
      });
      console.log(result)
    },
    fore() {
      this.array.forEach((rows) => {
        console.log(rows);
      });
    },
    fin() {
      var res = this.array.find((sample) => {
        return sample.includes(this.value);
      });
      console.log(res);
    },
  },
};
</script>

