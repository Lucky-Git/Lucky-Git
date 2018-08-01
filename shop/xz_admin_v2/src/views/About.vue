<template>
    <div>
        <Header></Header>
        <div class="about">
            <div class="container about-top">
                <h1>About Us</h1>
                <div class="row">
                    <div class="col-md-8">
                        <h2>Our latest collection</h2>
                        <p>Dignissimos at vero eos et accusamus et iusto odio ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecat officia.</p>
                        <div class="about-slide">
                            <ul class="list-inline">
                                <li><img src="../assets/images/a1.jpg" class="img-responsive"></li>
                                <li><img src="../assets/images/a2.jpg" class="img-responsive"></li>
                                <li><img src="../assets/images/a3.jpg" class="img-responsive"></li>
                                <li><img src="../assets/images/a4.jpg" class="img-responsive"></li>
                                <li><img src="../assets/images/a1.jpg" class="img-responsive"></li>
                                <li><img src="../assets/images/a2.jpg" class="img-responsive"></li>
                                <li><img src="../assets/images/a3.jpg" class="img-responsive"></li>
                                <li><img src="../assets/images/a4.jpg" class="img-responsive"></li>
                            </ul>
                            <div class="nav-arrow nav-left glyphicon glyphicon-chevron-left"></div>
                            <div class="nav-arrow nav-right glyphicon glyphicon-chevron-right"></div>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <h2>Our Advantages</h2>
                        <div class="advantage">
                            <ul class="list-inline">
                                <li>01</li>
                                <li>Vero vulputate enim non justo posuere phasellus eget mauris.</li>
                            </ul>
                            <ul class="list-inline">
                                <li>02</li>
                                <li>Vero vulputate enim non justo posuere phasellus eget mauris.</li>
                            </ul>
                            <ul class="list-inline">
                                <li>03</li>
                                <li>Vero vulputate enim non justo posuere phasellus eget mauris.</li>
                            </ul>
                            <ul class="list-inline">
                                <li>04</li>
                                <li>Vero vulputate enim non justo posuere phasellus eget mauris.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="bgImg">
                <div class="container">
                    <div class="col-md-4 col-md-offset-8">
                        <p>Flat 50% Off</p>
                        <p>On women Accessories</p>
                        <p><a href="jewellery.html">Shop now</a></p>
                    </div>
                </div>
            </div>
            <div class="container about-bottom">
                <h1>Our Team</h1>
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-12 team-item">
                        <div class="team-img">
                            <img src="../assets/images/t1.jpg" class="img-responsive">
                            <div class="mask">
                                <div class="social-icon">
                                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                        <h4>John Filmr Doe</h4>
                        <h5>Managing Director</h5>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12 team-item">
                        <div class="team-img">
                            <img src="../assets/images/t2.jpg" class="img-responsive">
                            <div class="mask">
                                <div class="social-icon">
                                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                        <h4>Jaye Smith</h4>
                        <h5>Lead Developer</h5>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12 team-item">
                        <div class="team-img">
                            <img src="../assets/images/t3.jpg" class="img-responsive">
                            <div class="mask">
                                <div class="social-icon">
                                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                        <h4>Mike Arney</h4>
                        <h5>Fashion Designer</h5>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12 team-item">
                        <div class="team-img">
                            <img src="../assets/images/t4.jpg" class="img-responsive">
                            <div class="mask">
                                <div class="social-icon">
                                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                        <h4>Michele Lampa</h4>
                        <h5>fashion Designer</h5>
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
            return {}
        },
        components: {
            Header,Footer
        },
        methods: {},
        computed: {},
        watch: {},
        mounted() {
        }
    }
</script>
<style scoped></style>