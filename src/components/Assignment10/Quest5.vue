<template>
  <div>
    <button @click="func">Clickme</button>
  </div>
</template>

<script>
export default {
  name: "EmiTchild",
  methods: {
    func() {
      this.$emit("Clickme");
    },
  },
};
</script>