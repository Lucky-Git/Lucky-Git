<template>
    <div>
        <Header></Header>
        <div>
        <div class="container">
            <form action="" method="post" class="login">
                <h1>Register</h1>
                <p>
                    <i class="fa fa-user"></i>
                    <input type="text" placeholder="Username">
                </p>
                <p>
                    <i class="fa fa-envelope"></i>
                    <input type="email" placeholder="Email">
                </p>
                <p>
                    <i class="fa fa-lock"></i>
                    <input type="password" placeholder="Password">
                </p>
                <p>
                    <i class="fa fa-lock"></i>
                    <input type="password" placeholder="Confirm Password">
                </p>
                <input type="button" value="Register">
            </form>
        </div>
    </div>
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
    export default {
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