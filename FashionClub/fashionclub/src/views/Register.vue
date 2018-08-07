<template>
    <div>
        <Header></Header>
        <div>
            <div class="container">
                <form action="" method="post" class="login">
                    <h1>Register</h1>
                    <p>
                        <i class="fa fa-user"></i>
                        <input v-model="username" type="text" placeholder="Username">
                    </p>
                    <p>
                        <i class="fa fa-envelope"></i>
                        <input v-model="email" type="email" placeholder="Email">
                    </p>
                    <p>
                        <i class="fa fa-lock"></i>
                        <input v-model="password" type="password" placeholder="Password">
                    </p>
                    <p>
                        <i class="fa fa-lock"></i>
                        <input v-model="retype_password" type="password" placeholder="Confirm Password">
                    </p>
                    <input v-on:click="register" type="button" value="Register">
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
    data() {
        return {
            username: '',
            email: '',
            password: '',
            retype_password: ''
        }
    },
    components: {
        Header,
        Footer
    },
    methods: {
        register() {
            var self = this
            if (this.username != '' && this.email != '' && this.password != '' && this.password === this.retype_password) {
                this.$http.post('/user', {
                        username: this.username,
                        email: this.email,
                        password: this.password
                    })
                    .then(function(response) {
                        console.log(response.status);
                        self.$cookies.set('access-token', response.status, 30)
                    })
                    .catch(function(error) {
                        console.log(error);
                    });
            } else {
                alert('请输入');
            }
        }
    },
    computed: {},
    watch: {},
    mounted() {

    }
}
</script>
<style scoped></style>