<template>
    <div>
        <Header></Header>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!--轮播指标-->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0"
                    class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
            </ol>
            <!--轮播项目-->
            <div class="carousel-inner">
                <div class="item active">
                    <div class="carousel-caption">
                        <h2>WELCOME TO</h2>
                        <h3>FASHION <span>CLUB</span></h3>
                        <p>Suspendisse sed tellus id libero pretium interdum. Suspendisse potenti. Quisque consectetur elit sit amet vehicula tristique.</p>
                        <a href="about.html">Read More</a>
                    </div>
                    <img src="../assets/images/img/banner2.jpg" alt="First slide">
                </div>
                <div class="item">
                    <img src="../assets/images/img/banner3.jpg" alt="Second slide">
                </div>
                <div class="item">
                    <img src="../assets/images/img/banner4.jpg" alt="Third slide">
                </div>
                <div class="item">
                    <img src="../assets/images/img/banner555.jpg" alt="Third slide">
                </div>
                <div class="item">
                    <img src="../assets/images/img/banner666.jpg" alt="Third slide">
                </div>
            </div>
            <!--轮播导航-->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div class="sales">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-xs-12 sale-left">
                        <a href="women.html">
                            <div class="sale-left-content">
                                <div>
                                    <h3>SALE</h3>
                                    <h4>upto   <span>75%</span></h4>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-xs-6 sale-center">
                        <a href="shoes.html">
                            <div class="sale-center-top">
                                <h3>SALE</h3>
                                <h4>upto   <span>55%</span></h4>
                            </div>
                        </a>
                        <a href="jewellery.html">
                            <div class="sale-center-bottom">
                                <h3>SALE</h3>
                                <h4>upto   <span>65%</span></h4>
                            </div>
                        </a>

                    </div>
                    <div class="col-md-3 col-xs-6 sale-right">
                        <a href="watches.html">
                            <div class="sale-right-top">
                                <h3>SALE</h3>
                                <h4>upto   <span>50%</span></h4>
                            </div>
                        </a>
                        <a href="handbags.html">
                            <div class="sale-right-bottom">
                                <h3>SALE</h3>
                                <h4>upto   <span>60%</span></h4>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="top-products">
            <div class="container">
                <h1>Top Products</h1>
                <ul class="list-inline">
                    <li><router-link to="/main/pman">MEN'S</router-link></li>
                    <li><router-link to="/main/pwoman">WOMEN</router-link></li>
                    <li><router-link to="/main/phandbags">HANDBAGS</router-link></li>
                    <li><router-link to="/main/pcosmetic">COSMETICS</router-link></li>
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
                                    <p>Praesent rutrum vitae ligula sit amet vehicula. Donec eget libero nec dolor tincidunt vulputate.</p>
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
                                    <p>Praesent rutrum vitae ligula sit amet vehicula. Donec eget libero nec dolor tincidunt vulputate.</p>
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
                                    <p>Praesent rutrum vitae ligula sit amet vehicula. Donec eget libero nec dolor tincidunt vulputate.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="person">
                            <div class="person-detail">
                                <img src="../assets/images/c1.png" class="img-responsive">
                                <p>Nam elementum magna id nibh pretium suscipit varius tortor. Phasellus in lorem sed massa consectetur fermentum. Praesent pellentesque sapien euismod.</p>
                                <h4># Andrew</h4>
                            </div>
                            <div class="person-detail">
                                <img src="../assets/images/c2.png" class="img-responsive">
                                <p>Morbi semper, risus dignissim sagittis iaculis, diam est ornare neque, accumsan risus tortor at est. Vivamus auctor quis lacus sed interdum celerisque.</p>
                                <h4># Lucy</h4>
                            </div>
                            <div class="person-detail">
                                <img src="../assets/images/c3.png" class="img-responsive">
                                <p>Fusce non cursus quam, in hendrerit sem. Nam nunc dui, venenatis vitae porta sed, sagittis id nisl. Pellentesque celerisque eget ullamcorper vehicula.</p>
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
    import '../assets/css/bootstrap.css'
    import '../assets/css/flexslider.css'
    import '../assets/css/font-awesome.min.css'
    import '../assets/css/main.css'
    import '../assets/js/jquery'
    import '../assets/js/bootstrap'
    import '../assets/js/main'
    import Header from '../components/Header'
    import Footer from '../components/Footer'
    export default{//导出一个组件
        data(){
            return {

            }
        },
        components:{
            Header,Footer
        },
        methods:{},
        computed:{},
        watch:{},
        mounted(){}
    }
</script>
<style scoped></style>