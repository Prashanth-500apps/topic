<template>
  <div>
    <h2>Child to Parent Using Ref</h2>
    <p>{{ name }}</p>
  </div>
</template>

<script>
export default {
  name: "QuestioN6",
  props: {
    name: String ,
  },
  methods:{
    fun(){
      document.write("HI");
    }
  }
};
</script>