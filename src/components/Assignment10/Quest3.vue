<template>
  <div>
    
<h1>Global Registration</h1> 

<p>So far, we’ve only created components using Vue.component:

Vue.component('my-component-name', {
  // ... options ...
})
These components are globally registered. That means they can be used in the template of any root Vue instance (new Vue) created after registration. For example:

Vue.component('component-a', { /* ... */ })
Vue.component('component-b', { /* ... */ })
Vue.component('component-c', { /* ... */ })

new Vue({ el: '#app' })
<!--<div id="app">
  <component-a></component-a>
  <component-b></component-b>
  <component-c></component-c>
</div>-->
This even applies to all subcomponents, meaning all three of these components will also be available inside each other </p>

<h1> Local Registration </h1>

<p>Global registration often isn’t ideal. For example, if you’re using a build system like Webpack, globally registering all components means that even if you stop using a component, it could still be included in your final build. This unnecessarily increases the amount of JavaScript your users have to download.

In these cases, you can define your components as plain JavaScript objects:

var ComponentA = { /* ... */ }
var ComponentB = { /* ... */ }
var ComponentC = { /* ... */ }
Then define the components you’d like to use in a components option:

new Vue({
  el: '#app',
  components: {
    'component-a': ComponentA,
    'component-b': ComponentB
  }
})
For each property in the components object, the key will be the name of the custom element, while the value will contain the options object for the component.</p>
</div>
</template>

<script>


export default {
  name:"QuesT3",
  data(){
    return{

    }
  }
}

</script>
