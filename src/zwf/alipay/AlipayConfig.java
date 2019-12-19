package zwf.alipay;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092600600367";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCy0akk/N1KH/hbPnnE3dXiZwIxZyKz482n0inIHurpYu/WWp36pc3fng1EvGM31Jtk8fs38IW1Hq9WpR1NUPZsUkLU1keHTv7AsG9UW/i+1FZ9S0ZDfguiOsAgopkxQ4vM3EWpVxaPHZhKnXdRg6D8yMtFlaSwGeo4792mUtqVC2zZWiaw3kfgpUZmjppN61MZiJWlHfNrj9hHjOzGJ9THsdxtR1gLLv/VEjoikrqYZtIcCBICzA/JPfOfxLJpA2jGbHPpxRqr7xz/rHuEAptrufHE2TAUYJAJYKNz3/VtFBkJLJsY3ztYk9XdcxBJkq42sWWyV50yd1dgpwihuL1rAgMBAAECggEACUIDkM+qoUjQceDlKwUVKriMi4Q8brXPku21jg/Tt6uQoTdl0HE/HGGxbCqYtG5EcVB54iaItZzWFRVNVBBqAaesoBpL77xuQgmgaeytDywtIiWAiMQA1DBYfBgO+Fb36O5KiP7iQxyUIuDOKaE3935pz7t0oE1nK/V3M0I84NR1NXskg8PeQ9aRBIHakTnQU2z1YFxnBA4lnBTUDTzMsAutv7LF5h0wZQa4etdqCbVL2m8UHP13onOmFNBgOtkI2bmkkavrBCsmOk5Qk9tCZRhH98uVew2aW/UdACmk+J0yVgjJS37TtfRcePkLW/hfM9GUl0SOqULAbhQaEDPgsQKBgQD3fA7nAQYmxdpXFGAkhfO/eiFtyKFP71N+D8+fF32ctdEYnTuH+xwQPOcYArIUJ2MSaByqILTmqrHzWuYE3YUTab8RBRjOu970cFRUrP0xFRaUdV0/trB2Lgc7oz5yNSODsOgDf3Lk8oyeMQE4DemlzcjGNPFFYHQQt30jSDHD2QKBgQC4+MTMVOYVzzR/4GnVS0u8kttc4M3ehxaT2AlYsWRvFYwgSQcW/mmDdYdLWlveQ8uSdBgudgDHy66XlfGJdpL0M4UmSJtYFB2O/GdAGkJIvJhEyJ1ESwuqYC4Zx4c+/iIBrDvkAiNJcA667jKXzFEyWGbRrNingjtIaLCP/lA04wKBgQCdZufLgFk7O8c8bxce45s9gx3TxzDhuCNwH/o7AyO/EdxlPUtplwooQbPxD3XXX52hTVo90gN8WcBION3m5kUHLdB5sLYwdki9Stw35rY6C2GLFoIyTa053Nh408CZvrZRwagu4VZfyuwoiJ5v2llqPNGfTnjNWSU4pJsQX5BXMQKBgQCkgmQNUui7tuh7XuzhjbETSw2cQjf21PCIlxhg8Ixhm6lfwXNzyNuw1mN46ilQub0hSO2EzOCO0aE7IlmKp5G1bOjcDrFSmblcRTHTOkd/h3RpoH72kUQTyKzXsrSfmshF8pflht05YFdJe7Y1ebsxapwvmWmrOVFeafW2azmMfwKBgGSBd0FbWl4H3X7I0DDZoycMndgFojsNemRmR3ufjlOSja2Pwu02W8M5j2J2NjDNccT2/4cko1fCHmGoXlthOT6wGQgezaygtXJkxAB9NLDg2Rie/6JsrX8dbrg0peojynbGJXk+LzbV9zHK2pzgzDl3SWxBSVH+du7xHxqay+Lo";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwFDs4MX1I2FrAVrHTxCt3/XZTnZEtX2wRZ4+rZCu5IV5+rY+xEn9bY6GGZZlezDoMKVwPDC+P8Yvc/JH696mxSsY1bJW/biuW7XHsYdtKbkyga2JEHraHjDP/g7t+WCqKGy+AiuMT/JKjkPWAazb2X8HI1AeI7yj9kKHOGfp+k9tooc4puUND+4qPySgD5dQQ7K60ErpLi7ow0XE+1hB+jmR69BOVYXXywgynbpGOo1BpAMmKQS7RNDT9hK/O1YT8DAf5brdYHQi9lEqeSyjMEVrEACWl4FpUNv8s2rMp3r3oaBKutP5lKQ8iAMCavcPCStZVhfuLFGyfyDDLdwhJQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://242290s5f9.qicp.vip/hospital/notify_url";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://242290s5f9.qicp.vip/hospital/return_url";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "GBK";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "D:/logs/";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

