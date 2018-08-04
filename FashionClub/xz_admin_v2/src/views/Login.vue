<template>
    <div>
        <Header></Header>
        <div class="container">
            <form action="" method="post" class="login">

                <h1>Login</h1>
                <p>
                    <i class="fa fa-envelope"></i>
                    <input v-model="uname" type="email" placeholder="Email">
                </p>
                <p>
                    <i class="fa fa-lock"></i>&nbsp;
                    <input v-model="upwd" type="password" placeholder="Password">
                </p>
                <input @click="login" type="button" value="Login"><br>
                <div>
                    <router-link to="">Forgot Password</router-link>
                    <router-link to="/register">Register</router-link>
                </div>
            </form>
        </div>
        <Footer></Footer>
    </div>
</template>
<script>

    //引入&打包全局的静态资源文件
    import '../assets/css/bootstrap.css'
    import '../assets/css/font-awesome.min.css'
    import '../assets/css/flexslider.css'
    import '../assets/css/main.css'
    import '../assets/js/jquery'
    import '../assets/js/bootstrap'
    import '../assets/js/main'
    import Header from '../components/Header'
    import Footer from '../components/Footer'

    import axios from 'axios'
    export default {
        data(){
            return {
                account:'',
                password:''
            }
        },
        components:{
            Header,Footer
        },
        methods:{
            login(){
                var url=`http://127.0.0.1/xz_admin_v1/data/admin_login.php?aname=${account}&apwd=${password}`;
                console.log(url);
                // axios.get(url).then((res)=>{}).catch((err)=>{})
            }
        },
        computed:{},
        watch:{},
        mounted(){}
    }
</script>
<style scoped></style>