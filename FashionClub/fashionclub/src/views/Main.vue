<template>
    <div>
        <Header></Header>
        <div class="block">
            <el-carousel height="370px">
                <el-carousel-item v-for="item in carousel_img"><img
                        v-bind:src="'http://biocenter.shu.edu.cn/shop/assets/'+item.img" width="100%">
                </el-carousel-item>
            </el-carousel>
        </div>
        <div class="sales">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-xs-12 sale-left">
                        <router-link to="/woman">
                            <div class="sale-left-content">
                                <div>
                                    <h3>SALE</h3>
                                    <h4>upto <span>75%</span></h4>
                                </div>
                            </div>
                        </router-link>
                    </div>
                    <div class="col-md-4 col-xs-6 sale-center">
                        <router-link to="/shoes">
                            <div class="sale-center-top">
                                <h3>SALE</h3>
                                <h4>upto <span>55%</span></h4>
                            </div>
                        </router-link>
                        <router-link to="/jewellery">
                            <div class="sale-center-bottom">
                                <h3>SALE</h3>
                                <h4>upto <span>65%</span></h4>
                            </div>
                        </router-link>

                    </div>
                    <div class="col-md-3 col-xs-6 sale-right">
                        <router-link to="/watches">
                            <div class="sale-right-top">
                                <h3>SALE</h3>
                                <h4>upto <span>50%</span></h4>
                            </div>
                        </router-link>
                        <router-link to="/handbags">
                            <div class="sale-right-bottom">
                                <h3>SALE</h3>
                                <h4>upto <span>60%</span></h4>
                            </div>
                        </router-link>
                    </div>
                </div>
            </div>
        </div>
        <div class="top-products">
            <div class="container">
                <h1>Top Products</h1>
                <ul class="list-inline">
                    <li>
                        <router-link to="/main/pman">MEN'S</router-link>
                    </li>
                    <li>
                        <router-link to="/main/pwoman">WOMEN</router-link>
                    </li>
                    <li>
                        <router-link to="/main/phandbags">HANDBAGS</router-link>
                    </li>
                    <li>
                        <router-link to="/main/pcosmetic">COSMETICS</router-link>
                    </li>
                </ul>
                <router-view></router-view>
            </div>
        </div>
        <div class="services">
            <div class="container">
                <div class="row">
                    <div class="col-xs-6">
                        <h2>Our Services</h2>
                        <div class="support">
                            <div class="row">
                                <div class="col-xs-2 services-border">
                                    <span class="fa fa-user"></span>
                                </div>
                                <div class="col-xs-10 detail">
                                    <h4>24/7 online free support</h4>
                                    <p>Praesent rutrum vitae ligula sit amet vehicula. Donec eget libero nec dolor
                                        tincidunt vulputate.</p>
                                </div>
                            </div>
                        </div>
                        <div class="shipping">
                            <div class="row">
                                <div class="col-xs-2 services-border">
                                    <span class="fa fa-bus"></span>
                                </div>
                                <div class="col-xs-10 detail">
                                    <h4>Free shipping</h4>
                                    <p>Praesent rutrum vitae ligula sit amet vehicula. Donec eget libero nec dolor
                                        tincidunt vulputate.</p>
                                </div>
                            </div>
                        </div>
                        <div class="money">
                            <div class="row">
                                <div class="col-xs-2 services-border">
                                    <span class="fa fa-money"></span>
                                </div>
                                <div class="col-xs-10 detail">
                                    <h4>100% money back</h4>
                                    <p>Praesent rutrum vitae ligula sit amet vehicula. Donec eget libero nec dolor
                                        tincidunt vulputate.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="person">
                            <div class="person-detail">
                                <img src="../assets/images/c/c1.png" class="img-responsive">
                                <p>Nam elementum magna id nibh pretium suscipit varius tortor. Phasellus in lorem sed
                                    massa consectetur fermentum. Praesent pellentesque sapien euismod.</p>
                                <h4># Andrew</h4>
                            </div>
                            <div class="person-detail">
                                <img src="../assets/images/c/c2.png" class="img-responsive">
                                <p>Morbi semper, risus dignissim sagittis iaculis, diam est ornare neque, accumsan risus
                                    tortor at est. Vivamus auctor quis lacus sed interdum celerisque.</p>
                                <h4># Lucy</h4>
                            </div>
                            <div class="person-detail">
                                <img src="../assets/images/c/c3.png" class="img-responsive">
                                <p>Fusce non cursus quam, in hendrerit sem. Nam nunc dui, venenatis vitae porta sed,
                                    sagittis id nisl. Pellentesque celerisque eget ullamcorper vehicula.</p>
                                <h4># Martina</h4>
                            </div>
                            <ul class="inds">
                                <li class=""></li>
                                <li></li>
                                <li></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <Footer></Footer>
    </div>
</template>
<script>
    import Header from '../components/Header'
    import Footer from '../components/Footer'

    export default {
        data() {
            return {
                carousel_img: []
            }
        },
        components: {
            Header, Footer
        },
        methods: {},
        computed: {},
        watch: {},
        mounted() {
            var self = this;
            this.$http.get('/carousel', {
                params: {},
            }).then(function (response) {
                self.carousel_img = response.data
            }).catch(function (error) {
                console.log(error);
            });
        }
    }
</script>
<style scoped></style>