<template>
    <div>
        <div class="footer-top">
            <div class="container">
                <h1>Top Brands</h1>
                <div class="imgs">
                    <ul class="row list-inline ulImgs">
                        <li><img src="../assets/images/4.png" class="img-responsive"></li>
                        <li><img src="../assets/images/5.png" class="img-responsive"></li>
                        <li><img src="../assets/images/6.png" class="img-responsive"></li>
                        <li><img src="../assets/images/7.png" class="img-responsive"></li>
                        <li><img src="../assets/images/8.jpg" class="img-responsive"></li>
                        <li><img src="../assets/images/4.png" class="img-responsive"></li>
                        <li><img src="../assets/images/5.png" class="img-responsive"></li>
                        <li><img src="../assets/images/6.png" class="img-responsive"></li>
                        <li><img src="../assets/images/7.png" class="img-responsive"></li>
                        <li><img src="../assets/images/8.jpg" class="img-responsive"></li>
                    </ul>
                    <div class="nav-arrow nav-left glyphicon glyphicon-chevron-left"></div>
                    <div class="nav-arrow nav-right glyphicon glyphicon-chevron-right"></div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 logo">
                        <a href="header.html">
                            <img src="../assets/images/logo/logo.png" alt="">
                            <h3>FASHION <span>CLUB</span></h3>
                        </a>
                        <ul>
                            <li>1234k Avenue, 4th,block</li>
                            <li>New York City.</li>
                            <li><a href="#">info@example.com</a></li>
                            <li class="share">
                                <a href=""><i class="fa fa-twitter"></i></a>
                                <a href=""><i class="fa fa-dribbble"></i></a>
                                <a href=""><i class="fa fa-facebook"></i></a>
                                <a href=""><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <h3>Information</h3>
                        <ul>
                            <li><a href="">Contact Us</a></li>
                            <li><a href="">Web Icons</a></li>
                            <li><a href="">Typography</a></li>
                            <li><a href="">FAQ's</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <h3>Shop</h3>
                        <ul>
                            <li><a href="">Jewellery</a></li>
                            <li><a href="">Cosmetics</a></li>
                            <li><a href="">Shoes</a></li>
                            <li><a href="">Deos</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <h3>My Account</h3>
                        <ul>
                            <li>
                                <router-link to="/login">Login</router-link>
                            </li>
                            <li>
                                <router-link to="/register">Register</router-link>
                            </li>
                            <li>
                                <router-link to="/main">Recommended</router-link>
                            </li>
                            <li>
                                <router-link to="/main">Payments</router-link>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
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