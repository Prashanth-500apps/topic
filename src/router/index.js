import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '../components/HelloWorld'
import Question1 from '../components/Question1'
import Question3 from '../components/Question3'
import Question2 from '../components/Question2'
import Question4 from '../components/Question4'
import Question5 from '../components/Question5'
import Question6 from '../components/Question6'
import Question7 from '../components/Question7'
import Question8 from '../components/Question8'
import Question9 from '../components/Question9'
import Question10 from '../components/Question10'




Vue.use(Router)

const routes = [
    {
        path:'/',
        name:"Home",
        component:HelloWorld
    },
    {
        path:'/Question1',
        name:"Question1",
        component:Question1
    },
    {
        path:'/Question3',
        name:"Question3",
        component:Question3
    },
    {
        path:'/Question2',
        name:"Question2",
        component:Question2
    },
    {
        path:'/Question4',
        name:"Question4",
        component:Question4
    },
    {
        path:'/Question5',
        name:"Question5",
        component:Question5
    },
    {
        path:'/Question6',
        name:"Question6",
        component:Question6
    },
    {
        path:'/Question8',
        name:"Question8",
        component:Question8
    },
    {
        path:'/Question9',
        name:"Question9",
        component:Question9
    },
    {
        path:'/Question10',
        name:"Question10",
        component:Question10
    },
    {
        path:'/Question7',
        name:"Question7",
        component:Question7
    },
]

let router = new Router({routes})

export default router