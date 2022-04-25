<template>
<div>
<props :msg="message" :name="name"/>
</div>
</template>
<script>
import Props from "./Quest4.vue";
export default {
  name: "PropsParent",
  components: {
    Props,
  },
  data() {
    return {
      message: "Hi",
      name: "Prashanth",
    };
  },
};
</script>