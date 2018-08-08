<template>
    <div>
        <div class="footer-top">
            <div class="container">
                <h1>Top Brands</h1>
                <swiper :options="swiperOption">
                    <swiper-slide v-for="item in brand_img"><img
                            v-bind:src="'http://biocenter.shu.edu.cn/shop/assets/'+item.img" width="200px">
                    </swiper-slide>
                </swiper>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 logo">
                        <router-link to="/main">
                            <img src="../assets/images/logo/logo.png">
                            <h3>FASHION <span>CLUB</span></h3>
                        </router-link>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <h3>Information</h3>
                        <ul>
                            <li>
                                <router-link to="/contact">Contact Us</router-link>
                            </li>
                            <li>
                                <router-link to="/web">Web Icons</router-link>
                            </li>
                            <li>
                                <router-link to="/typography">Typography</router-link>
                            </li>
                            <li>
                                <router-link to="/faq">FAQ's</router-link>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <h3>Shop</h3>
                        <ul>
                            <li>
                                <router-link to="/jewellery">Jewellery</router-link>
                            </li>
                            <li>
                                <router-link to="/cosmetics">Cosmetics</router-link>
                            </li>
                            <li>
                                <router-link to="/shoes">Shoes</router-link>
                            </li>
                            <li>
                                <router-link to="/deos">Deos</router-link>
                            </li>
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
                                <router-link to="/recommended">Recommended</router-link>
                            </li>
                            <li>
                                <router-link to="/payments">Payments</router-link>
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
            return {
                brand_img: [],
                swiperOption: {
                    slidesPerView: 4,
                    spaceBetween: 25,
                    autoplay: true,
                    loop: true
                }
            }
        },
        components: {},
        methods: {},
        computed: {},
        watch: {},
        mounted() {
            var self = this;
            this.$http.get('/brand', {
                params: {},
            }).then(function (response) {
                self.brand_img = response.data
            }).catch(function (error) {
                console.log(error);
            });
        }
    }
</script>
<style scoped>
</style>