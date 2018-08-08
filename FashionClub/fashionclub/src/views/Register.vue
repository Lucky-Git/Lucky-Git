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
                    <input v-model="confirmPassword" type="password" placeholder="Confirm Password">
                </p>
                <input @click="register" type="button" value="Register">
            </form>
        </div>
    </div>
        <Footer></Footer>
    </div>
</template>
<script>
    // import '../assets/css/bootstrap.css'
    // import '../assets/css/flexslider.css'
    // import '../assets/css/font-awesome.min.css'
    // import '../assets/css/main.css'
    // import '../assets/js/jquery'
    // import '../assets/js/bootstrap'
    // import '../assets/js/main'
    // import axios from 'axios'
     //axios.default.baseURL='http://biocenter.shu.edu.cn/shop/backend/web/index.php'
    import Header from '../components/Header'
    import Footer from '../components/Footer'
    export default {
        data(){
            return {
                username:'',
                password:'',
                confirmPassword:'',
                email:''
            }
        },
        components:{
            Header,Footer
        },
        methods:{
            register(){
                var self=this;
                if(this.username!=''&&this.password!=''&&this.email!=''&&this.confirmPassword===this.password){
                    // var sdjak=this.$cookies.get('access-token');
                    this.$http.post('/user',{
                        username:this.username,
                        email:this.email,
                        password:this.password,
                        // access_token:sdjak
                    }).then((res)=>{
                        if(res.status==201){
                            self.$cookies.set('access-token',res.status,30);//有效时间是30秒,1是保存的数据（相当于id）
                            console.log(this.$cookies.get('access-token'));
                            this.$router.push('/login');
                        }
                    }).catch((err)=>{
                        alert('用户已存在');
                    })
                }else{
                    if(!this.username){
                        alert('用户名不能为空');
                    }else if(!this.email){
                        alert('email不能为空');
                    }else if(!this.password){
                        alert('密码不能为空');
                    }else if(!this.confirmPassword){
                        alert('确认密码不能为空');
                    }else if(this.confirmPassword!=this.password){
                        alert('两次密码不一致，请重新输入');
                    }
                }

            }
        },
        computed:{},
        watch:{},
        mounted(){}
    }
</script>
<style scoped></style>