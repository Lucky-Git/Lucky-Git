<template>
    <div>
        <Header></Header>
        <div class="contact">
            <div class="container">
                <div class="row">
                    <h1>Contact Us</h1>
                    <div class="col-md-3 contact-left">
                        <div>
                            <h4>ADDRESS</h4>
                            <p>345 Setwant natrer,</p>
                            <p>Washington. United States.</p>
                        </div>
                        <div>
                            <h4>PHONE</h4>
                            <p>+1(401) 1234 567.</p>
                            <p>+1(804) 4261 150.</p>
                        </div>
                        <div>
                            <h4>EMAIL</h4>
                            <p><a href="">example@gmail.com</a></p>
                            <p><a href="">example2@yahoo.com</a></p>
                        </div>
                    </div>
                    <div class="col-md-9 contact-right">
                        <form action="" method="post" accept-charset="utf-8">
                            <input type="text" placeholder="Your name">
                            <input type="text" placeholder="Your email">
                            <input type="text" placeholder="Your submit">
                            <input type="text" placeholder="Phone number">
                            <textarea name="" placeholder="Your message"></textarea>
                            <input type="submit" value="Send message">
                        </form>
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