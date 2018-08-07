/**
 * Created by web-01 on 18/07/2018.
 */
module.exports={
    // 对webpack进行配置
    configureWebpack:{
        module:{
            rules:[{
                test:/\.ico$/,
                use:'file-loader'
            }]
        }
    }
}