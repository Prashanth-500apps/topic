<template>
<div>
<button @click="func">Result</button>
</div>
</template>
<script>
export default {
  name: "QuesT8",
  data() {
    return {
      array: [
        { id: 20, name: "Captain Piett" },
        { id: 24, name: "General Veers" },
        { id: 56, name: "Admiral Ozzel" },
        { id: 88, name: "Commander Jerjerrod" },
      ],
      result:"",
    };
  },
  methods: {
    func() {
       this.result = this.array.filter((x) => { return x.name=="General Veers" });
      document.write(JSON.stringify(this.result));
    },
  },
};
</script>