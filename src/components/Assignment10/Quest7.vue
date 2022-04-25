<template>
  <div>
    <!-- <p>Element Index = {{ result }}</p> -->
    <button @click="myFunction()">Result</button>
  </div>
</template>

<script>
export default {
  name: "QuesT7",
  data() {
    return {
      users: [
        { id: 20, name: "Captain Piett" },
        { id: 24, name: "General Veers" },
        { id: 56, name: "Admiral Ozzel" },
        { id: 88, name: "Commander Jerjerrod" },
      ],
      result: "",
    };
  },
  methods: {
    myFunction() {
      this.result = this.users.findIndex((data) => {
        return data.id == "88";
      });
      document.write(this.result);
    },
  },
};
</script>