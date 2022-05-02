<template>
  <div>
    <h5>Question-7</h5>
    <button type="submit" @click="Duplicates">Click!</button>
  </div>
</template>

<script>
export default {
  name: "QuEE7",
  data() {
    return {
      array: ["apple", "mango", "apple", "orange", "mango", "mango"],
      arr: [],
    };
  },
  methods: {
    Duplicates() {
      this.arr = this.array.filter((item, index) => this.array.indexOf(item) === index);
      console.log(this.arr);
    },
  },
};
</script>