<template>
    <div>
	<button type="submit" @click="myFunction">Click Me</button>
</div>
</template>

<script>

export default {
    name:"QuEE9",
    data(){
        return{
            array1 : [1,0,2,3,4,0],
            array2 : [3,5,6,7,8,13],
            sum:[],
        }
    },
    methods:{
        myFunction(){
        //    this.sum = [...this.array1].map((e,i)=> e+this.array2[i]);
        //    document.write(this.sum)
        function sumArray(a, b) {
        var c = [];
        for (var i = 0; i < Math.max(a.length, b.length); i++) {
        c.push((a[i] || 0) + (b[i] || 0));
        }
        return c;
}
        this.sum = sumArray(this.array1,this.array2)
        document.write(this.sum)
        }  
}  
}
</script>

