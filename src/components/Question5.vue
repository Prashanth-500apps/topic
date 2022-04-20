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
    };
  },
  methods: {
    fullnameis() {
      var fullname = this.firstname +" " + this.lastname;
      document.write(fullname);
    },
  },
};
</script>