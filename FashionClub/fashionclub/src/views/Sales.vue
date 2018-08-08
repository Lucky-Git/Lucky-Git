<template>
    <div>
        SALME...
    </div>
</template>
<script>
    export default {
        data(){
            return {

            }
        },
        components:{},
        methods:{},
        computed:{},
        watch:{},
        mounted(){
            var self = this;
            var $user_id = this.$cookies.isKey('user_id');
            var $access_token = this.$cookies.isKey('access_token');
            if (!$user_id || !$access_token) {
                self.$router.push({path: '/login'});
                return 0;
            }
        }
    }
</script>
<style scoped></style>