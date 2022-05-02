<!--<html>
<body>
    <h1></h1>
    <script>
        var color = ["Blue ", "Green", "Red", "Orange", "Violet", "Indigo", "Yellow "];
        function Ordinal(n) {
            var o = ["th", "st", "nd", "rd"],
             x = n % 100;
            return x + (o[(x - 20) % 10] || o[x] || o[0]);
        }
        for (n = 0; n < color.length; n++) {
          var ordinal = n + 1;
          var output = (Ordinal(ordinal) + " choice is " + color[n] + ".");
          console.log(output);
        }
    </script>
</body>
</html> 

<template>
    <div>
    <button type="submit" @click="Ordinal" >Submit </button>
    </div>
</template>

<script>

export default {
    name:"QuEE8",
    data(){
        return{
             color:["Blue ", "Green", "Red", "Orange", "Violet", "Indigo", "Yellow "],
             o : ["th", "st", "nd", "rd"],
             n="",
        }
    },
    methods:{
        fun(){
            var x = this.n%100
            return x + (o[(x - 20) % 10] || o[x] || o[0]);
        }

    }

}
</script> -->

<template>
  <div>
    <h1 align="center">Question8</h1>
    <button @click="func()">Submit</button>
  </div>
</template>

<script>
export default {
  name: "QuEE8",
  data() {
    return {
      color: ["Blue ", "Green", "Red", "Orange", "Violet", "Indigo", "Yellow "],
    };
  },
  methods: {
    func() {
      function Ordinal(n) {
        var o = ["th", "st", "nd", "rd"],
        x = n % 100;
        return x + (o[(x - 20) % 10] || o[x] || o[0]);
      }
      for (this.n = 0; this.n < this.color.length; this.n++) {
        var ordinal = this.n + 1;
        var output = Ordinal(ordinal) + " choice is " + this.color[this.n] + ".";
        console.log(output);
      }
    },
  },
};
</script>
