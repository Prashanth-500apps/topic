<template>
  <div>
    <h1>Output Of given Code</h1>
    <p>{{ perimeter() }}</p>
    <p>{{ diameter() }}</p>
  </div>
</template>

<script>
export default {
  name: "QuEE1",
  data() {
    return {
      radius: 20,
      PI: 3.14,
      perimeter: () => {2 * this.PI * this.radius},
    };
  },
  methods: {
    diameter() {
      const circle = {
        radius: 20,
      };
      console.log(circle);
      return this.radius * 2;
    },
  },
};
</script>