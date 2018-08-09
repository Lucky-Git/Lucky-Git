<template>
    <div>
        <div class="container">
            <form class="login">
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
                    <input v-model="confirmPassword" type="password" placeholder="Confirm Password">
                </p>
                <input @click="register" type="button" value="Register">
            </form>
        </div>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                username: '',
                password: '',
                confirmPassword: '',
                email: ''
            }
        },
        components: {},
        methods: {
            register() {
                var self = this;
                if (this.username !== '' && this.password !== '' && this.email !== '' && this.confirmPassword === this.password) {
                    this.$http.post('/user', {
                        username: this.username,
                        email: this.email,
                        password: this.password,
                    }).then((res) => {
                        if (res.status === 201) {
                            self.$message.error('注册成功');
                            this.$router.push('/login');
                        }
                    }).catch((err) => {
                        self.$message.error('用户名已存在');
                    })
                } else {
                    if (!this.username) {
                        self.$message.error('用户名不能为空');
                    } else if (!this.email) {
                        self.$message.error('邮箱不能为空');
                    } else if (!this.password) {
                        self.$message.error('密码不能为空');
                    } else if (!this.confirmPassword) {
                        self.$message.error('确认密码不能为空');
                    } else if (this.confirmPassword !== this.password) {
                        self.$message.error('两次密码不一致，请重新输入');
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
<style scoped></style>