<template>
    <div>
        <md-empty-state
                md-rounded
                md-label="Coming Soon">
            <i class="el-icon-loading"></i>
        </md-empty-state>
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
<style scoped>
</style>