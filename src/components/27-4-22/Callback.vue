<template>
  <div>
    <h2>callback2</h2>
  </div>
</template>

<script>
export default {
  name: "CallBack",
  data() {
    return {
      result: this.mycalculator(2, 2, this.mydisplayer),
    };
  },
  methods: {
    mydisplayer:(something) => {
      console.log(something);
    },
    mycalculator:(arg1, arg2, arg3) => {
      let sum = arg1 + arg2;
      arg3(sum);
    },
  },
};
</script>