<template>
    <div>
        <Header></Header>
        <div class="container">
            <form action="" method="post" class="login">
                <h1>Login</h1>
                <p>
                    <i class="fa fa-envelope"></i>
                    <input v-model="account" type="email" placeholder="Email">
                </p>
                <p>
                    <i class="fa fa-lock"></i>&nbsp;
                    <input v-model="password" type="password" placeholder="Password">
                </p>
                <input @click="login" type="button" value="Login">
                <br>
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
export default {
    data() {
        return {
            account: '',
            password: ''
        }
    },
    components: {
        Header,
        Footer
    },
    methods: {
        login() {
            this.$http.post('/user/login', {
                    account: this.account,
                    password: this.password
                }, {
                    headers: {
                        'Access-Control-Allow-Origin': '*'
                    }
                })
                .then(function(response) {
                    console.log(response);
                })
                .catch(function(error) {
                    console.log(error);
                });
        }
    },
    computed: {},
    watch: {},
    mounted() {}
}
</script>
<style scoped></style>