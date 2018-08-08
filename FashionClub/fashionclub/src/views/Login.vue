<template>
    <div>
        <Header></Header>
        <div class="container">
            <form action="" method="post" class="login">
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
        <Footer></Footer>
    </div>
</template>
<script>

    //引入&打包全局的静态资源文件
    import Header from '../components/Header'
    import Footer from '../components/Footer'
    //declare var $;
    export default {
        data(){
            return {
                email:'',
                password:''
            }
        },
        components:{
            Header,Footer
        },
        methods:{
            login(){
                if(this.email!=''&&this.password!=''){
                   // $sdjak=this.$cookies.get('access-token');
                    this.$http.post('/user/login',{
                        account:this.email,
                        password:this.password,
                        //access_token:$sdjak
                    }).then((res)=>{
                        console.log(res);

                    }).catch((err)=>{
                        console.log(err);
                    })
                }
            }
        },
        computed:{},
        watch:{},
        mounted(){}
    }
</script>
<style scoped></style>