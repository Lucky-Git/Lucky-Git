<template>
    <div>
        <Header></Header>
        <router-view></router-view>
        <Footer></Footer>
    </div>
</template>
<script>
    import '../assets/css/bootstrap.css'
    import '../assets/css/flexslider.css'
    import '../assets/css/font-awesome.min.css'
    import '../assets/css/main.css'
    import '../assets/js/jquery'
    import '../assets/js/bootstrap'
    import '../assets/js/main'
    import Header from '../components/Header'
    import Footer from '../components/Footer'
    export default{//导出一个组件
        data(){
            return {

            }
        },
        components:{
            Header,Footer
        },
        methods:{},
        computed:{},
        watch:{},
        mounted(){}
    }
</script>
<style scoped></style>