<template>
  <div>
    <button @click="fullnameis(firstname,lastname)">Fullname</button>
  </div>
</template>

<script>
export default {
  name: "QuestioN5",
  data() {
    return {
       firstname: "Mantra",
       lastname: "Technologies",
       fullname:"",
    };
  },
  methods: {
    fullnameis() {
       this.fullname = this.firstname +" " + this.lastname;
      document.write(this.fullname);
    },
  },
};
</script>