<template>
    <div>
        <div class="header">
            <div class="header-top">
                <div class="container">
                    <div class="col-md-6 logo">
                        <router-link to="/main">
                            <img src="../assets/images/logo2.png" alt="">
                            <h1>FASHION <span>CLUB</span></h1>
                        </router-link>
                    </div>
                    <div class="col-md-6 phone">
                        <ul class="list-inline">
                            <li>
                                <span class="glyphicon glyphicon-earphone"></span>
                            </li>
                            <li>
                                +18045403380
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="header-bottom">
                <nav class="navbar navbar-default">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-7">
                                <div class="navbar-header">
                                    <a href="#menu" class="navbar-toggle"
                                       data-toggle="collapse">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </a>
                                </div>
                                <div id="menu" class="collapse navbar-collapse">
                                    <ul class="nav navbar-nav">
                                        <li class="active">
                                            <router-link to="/main"><span>Home</span></router-link>
                                        </li>
                                        <li class="dropdown ">
                                            <a href="" data-toggle="dropdown">Clothing
                                                <span class="glyphicon glyphicon-chevron-down"></span>
                                            </a>
                                            <ul class="dropdown-menu multi">
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <ul>
                                                            <li>
                                                                <router-link to="/woman">
                                                                    <i class="glyphicon glyphicon-chevron-right"></i>
                                                                    Women's Clothing
                                                                </router-link>
                                                            </li>
                                                            <li>
                                                                <router-link to="/man">
                                                                    <i class="glyphicon glyphicon-chevron-right"></i>
                                                                    Men's Clothing
                                                                </router-link>
                                                            </li>
                                                            <li>
                                                                <router-link to="/kids">
                                                                    <i class="glyphicon glyphicon-chevron-right"></i>
                                                                    Kid's Wear
                                                                </router-link>
                                                            </li>
                                                            <li>
                                                                <router-link to="/partywear">
                                                                    <i class="glyphicon glyphicon-chevron-right"></i>
                                                                    Party Wear
                                                                </router-link>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <ul class="multi-column-dropdown">
                                                            <li>
                                                                <router-link to="/casuals"><i
                                                                        class="glyphicon glyphicon-chevron-right"></i>Casuals
                                                                </router-link>
                                                            </li>
                                                            <li>
                                                                <router-link to="/night"><i
                                                                        class="glyphicon glyphicon-chevron-right"></i>Night
                                                                    Wear
                                                                </router-link>
                                                            </li>
                                                            <li>
                                                                <router-link to="/formals"><i
                                                                        class="glyphicon glyphicon-chevron-right"></i>Formals
                                                                </router-link>
                                                            </li>
                                                            <li>
                                                                <router-link to="/inner"><i
                                                                        class="glyphicon glyphicon-chevron-right"></i>Inner
                                                                    Wear
                                                                </router-link>
                                                            </li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <router-link to="/women"><img src="../assets/images/menu1.jpg"
                                                                                      class="img-responsive" alt="">
                                                        </router-link>
                                                    </div>
                                                </div>
                                            </ul>
                                        </li>
                                        <li class="dropdown">
                                            <a href="" data-toggle="dropdown">Personal Care
                                                <span class="glyphicon glyphicon-chevron-down"></span>
                                            </a>
                                            <ul class="dropdown-menu multi">
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <ul class="multi-column-dropdown">
                                                            <li>
                                                                <router-link to="/jewellery"><i
                                                                        class="glyphicon glyphicon-chevron-right"></i>Jewellery
                                                                </router-link>
                                                            </li>
                                                            <li>
                                                                <router-link to="/watches"><i
                                                                        class="glyphicon glyphicon-chevron-right"></i>Watches
                                                                </router-link>
                                                            </li>
                                                            <li>
                                                                <router-link to="/cosmetics"><i
                                                                        class="glyphicon glyphicon-chevron-right"></i>Cosmetics
                                                                </router-link>
                                                            </li>
                                                            <li>
                                                                <router-link to="/deos"><i
                                                                        class="glyphicon glyphicon-chevron-right"></i>Deo
                                                                    & Perfumes
                                                                </router-link>
                                                            </li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <ul class="multi-column-dropdown">
                                                            <li>
                                                                <router-link to="/haircare"><i
                                                                        class="glyphicon glyphicon-chevron-right"></i>Hair
                                                                    Care
                                                                </router-link>
                                                            </li>
                                                            <li>
                                                                <router-link to="/shoes"><i
                                                                        class="glyphicon glyphicon-chevron-right"></i>Shoes
                                                                </router-link>
                                                            </li>
                                                            <li>
                                                                <router-link to="/handbags"><i
                                                                        class="glyphicon glyphicon-chevron-right"></i>Handbags
                                                                </router-link>
                                                            </li>
                                                            <li>
                                                                <router-link to="/skincare"><i
                                                                        class="glyphicon glyphicon-chevron-right"></i>Skin
                                                                    care
                                                                </router-link>
                                                            </li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <router-link to="/jewellery"><img
                                                                src="../assets/images/menu2.jpg" class="img-responsive"
                                                                alt=""></router-link>
                                                    </div>
                                                </div>

                                            </ul>
                                        </li>
                                        <li>
                                            <router-link to="/about">About</router-link>
                                        </li>
                                        <li>
                                            <router-link to="/contact">Contact Us</router-link>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6 search">
                                <input type="text" placeholder="Search for a Product...">
                                <button class="glyphicon glyphicon-search"></button>
                            </div>
                            <div class="col-md-1 col-xs-6">
                                <div class="cart">
                                    <form action="" method="post">
                                        <input type="hidden">
                                        <button class="glyphicon glyphicon-shopping-cart">
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
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

    export default {
        data() {
            return {}
        },
        components: {},
        methods: {},
        computed: {},
        watch: {},
        mounted() {
        }
    }
</script>
<style scoped>
</style>