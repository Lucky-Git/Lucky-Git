<template>
    <div>
        <div class="container">
            <form class="login">
                <h1>Login</h1>
                <p>
                    <i class="fa fa-envelope"></i>
                    <input v-model="email" type="email" placeholder="Email">
                </p>
                <p>
                    <i class="fa fa-lock"></i>&nbsp;
                    <input v-model="password" type="password" placeholder="Password">
                </p>
                <input @click="login" type="button" value="Login"><br>
                <div>
                    <router-link to="">Forgot Password</router-link>
                    <router-link to="/register">Register</router-link>
                </div>
            </form>
        </div>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                email: '',
                password: ''
            }
        },
        components: {},
        methods: {
            login() {
                var self = this;
                if (this.email !== '' && this.password !== '') {
                    this.$http.post('/user/login', {
                        account: this.email,
                        password: this.password,
                    }).then((res) => {
                        self.$cookies.set('user_id', res.data['message']['id'], 60 * 60 * 24);
                        self.$cookies.set('access_token', res.data['access_token'], 60 * 60 * 24);
                        this.$message({
                            message: '登录成功',
                            type: 'success'
                        });
                        if (self.$route.query['from'] === 'women') {
                            self.$router.push({path: '/women'})
                        } else {
                            self.$router.push({path: '/main'})
                        }
                    }).catch((err) => {
                        self.$message.error('邮箱或密码错误');
                    })
                }
                else {
                    if (this.email === '') {
                        self.$message.error('请输入邮箱');
                    }
                    else if (this.password === '') {
                        self.$message.error('请输入密码');
                    }
                }
            }
        },
        computed: {},
        watch: {},
        mounted() {
        }
    }
</script>
<style scoped>
</style>