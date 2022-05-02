<template>
    <div>
        <button type="submit" @click="res" >REsult</button>
        </div>
</template>

<script>
export default {
      name:"QuEE2",
      data(){
          return{
            a:[29,41,46.5],
          }
      },
      methods:{
          res(){
            const doubled = this.a.reduce((total, amount) => {
            total.push(amount * 2);
            return total;
        }, []);
        document.write("input : " + this.a),
        document.write("</br>Output : " + doubled);
          }
      }        
}
</script>