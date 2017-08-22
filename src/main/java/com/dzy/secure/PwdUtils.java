package com.dzy.secure;

import org.junit.Test;

import javax.crypto.Cipher;
import java.security.*;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.security.spec.X509EncodedKeySpec;

/**
 * @author dengzhiyuan
 * @version 1.0
 * @date 2017/8/22
 * @since 1.0
 */
public class PwdUtils {

    //keySize 512 默认输出的就是这两个公钥和私钥
    private static final String DEFAULT_PRIVATE_KEY_STRING = "MIIBVAIBADANBgkqhkiG9w0BAQEFAASCAT4wggE6AgEAAkEAocbCrurZGbC5GArEHKlAfDSZi7gFBnd4yxOt0rwTqKBFzGyhtQLu5PRKjEiOXVa95aeIIBJ6OhC2f8FjqFUpawIDAQABAkAPejKaBYHrwUqUEEOe8lpnB6lBAsQIUFnQI/vXU4MV+MhIzW0BLVZCiarIQqUXeOhThVWXKFt8GxCykrrUsQ6BAiEA4vMVxEHBovz1di3aozzFvSMdsjTcYRRo82hS5Ru2/OECIQC2fAPoXixVTVY7bNMeuxCP4954ZkXp7fEPDINCjcQDywIgcc8XLkkPcs3Jxk7uYofaXaPbg39wuJpEmzPIxi3k0OECIGubmdpOnin3HuCP/bbjbJLNNoUdGiEmFL5hDI4UdwAdAiEAtcAwbm08bKN7pwwvyqaCBC//VnEWaq39DCzxr+Z2EIk=";
    public static final String DEFAULT_PUBLIC_KEY_STRING = "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAKHGwq7q2RmwuRgKxBypQHw0mYu4BQZ3eMsTrdK8E6igRcxsobUC7uT0SoxIjl1WveWniCASejoQtn/BY6hVKWsCAwEAAQ==";


    @Test
    public void testDefault() throws Exception{
        //每次生成的公钥和私钥都不相同
        String[] arr = PwdUtils.genKeyPair(512); //512比特，生成秘钥最小为64字节
        //可以通过调整算法提供者来减小密文长度
        System.out.println("privateKey:" + arr[0]);
        System.out.println("privateKey_length:" + arr[0].length());
        System.out.println("publicKey:" + arr[1]);
        System.out.println("publicKey_length:" + arr[1].length());

        String encrypt = PwdUtils.encrypt(arr[0],"eson he");
        System.out.println(encrypt);

        String decrypt = PwdUtils.decrypt(arr[1], encrypt);

        System.out.println(decrypt);
    }

    /**
     * 解密
     * @param cipherText 加密过的字符
     * @return
     * @throws Exception
     */
    public static String decrypt(String cipherText) throws Exception{
        return decrypt((String) null, cipherText);
    }


    /**
     *
     * @param publicKeyText 公钥
     * @param cipherText 加密过的字符
     * @return
     */
    public static String decrypt(String publicKeyText, String cipherText) throws Exception {
        PublicKey publicKey = getPublicKey(publicKeyText);
        return decrypt(publicKey, cipherText);
    }

    public static String decrypt(PublicKey publicKey, String cipherText)
            throws Exception {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        try {
            cipher.init(Cipher.DECRYPT_MODE, publicKey);
        } catch (InvalidKeyException e) {
            // 因为 IBM JDK 不支持私钥加密, 公钥解密, 所以要反转公私钥
            // 也就是说对于解密, 可以通过公钥的参数伪造一个私钥对象欺骗 IBM JDK
            RSAPublicKey rsaPublicKey = (RSAPublicKey) publicKey;
            RSAPrivateKeySpec spec = new RSAPrivateKeySpec(rsaPublicKey.getModulus(), rsaPublicKey.getPublicExponent());
            Key fakePrivateKey = KeyFactory.getInstance("RSA").generatePrivate(spec);
            cipher = Cipher.getInstance("RSA"); //It is a stateful object. so we need to get new one.
            cipher.init(Cipher.DECRYPT_MODE, fakePrivateKey);
        }

        if (cipherText == null || cipherText.length() == 0) {
            return cipherText;
        }

        byte[] cipherBytes = Base64.base64ToByteArray(cipherText);
        byte[] plainBytes = cipher.doFinal(cipherBytes);

        return new String(plainBytes);
    }

    public static PublicKey getPublicKey(String publicKeyText) {
        if (publicKeyText == null || publicKeyText.length() == 0) {
            publicKeyText = PwdUtils.DEFAULT_PUBLIC_KEY_STRING;
        }

        try {
            byte[] publicKeyBytes = Base64.base64ToByteArray(publicKeyText);
            X509EncodedKeySpec x509KeySpec = new X509EncodedKeySpec(
                    publicKeyBytes);

            KeyFactory keyFactory = KeyFactory.getInstance("RSA", "SunRsaSign");
            return keyFactory.generatePublic(x509KeySpec);
        } catch (Exception e) {
            throw new IllegalArgumentException("Failed to get public key", e);
        }
    }


    public static String encrypt(String plainText) throws Exception {
        return encrypt((String) null, plainText);
    }

    public static String encrypt(String key,String plainText) throws Exception {
        if (key==null){
            key=DEFAULT_PRIVATE_KEY_STRING;
        }

        byte[] keyBytes = Base64.base64ToByteArray(key);
        return encrypt(keyBytes,plainText);
    }

    /**
     * 加密
     * @param keyBytes
     * @param plainText
     * @return
     * @throws NoSuchProviderException
     * @throws NoSuchAlgorithmException
     */
    public static String encrypt(byte[] keyBytes,String plainText) throws Exception {
        PKCS8EncodedKeySpec spec = new PKCS8EncodedKeySpec(keyBytes);
        KeyFactory factory = KeyFactory.getInstance("RSA", "SunRsaSign");
        PrivateKey privateKey = factory.generatePrivate(spec);
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        try {
            cipher.init(Cipher.ENCRYPT_MODE, privateKey);
        } catch (InvalidKeyException e) {
            //For IBM JDK, 原因点进去看解密方法中的说明
            RSAPrivateKey rsaPrivateKey = (RSAPrivateKey) privateKey;
            RSAPublicKeySpec publicKeySpec = new RSAPublicKeySpec(rsaPrivateKey.getModulus(), rsaPrivateKey.getPrivateExponent());
            Key fakePublicKey = KeyFactory.getInstance("RSA").generatePublic(publicKeySpec);
            cipher = Cipher.getInstance("RSA");
            cipher.init(Cipher.ENCRYPT_MODE, fakePublicKey);
        }
        byte[] encryptedBytes = cipher.doFinal(plainText.getBytes());
        String encryptedString = Base64.byteArrayToBase64(encryptedBytes);
        return encryptedString;
    }



    /**
     * 生成秘钥对，将bytes改为base64
     * @param keySize
     * @return
     * @throws NoSuchProviderException
     * @throws NoSuchAlgorithmException
     */
    public static String[] genKeyPair(int keySize) throws NoSuchProviderException, NoSuchAlgorithmException {
        byte[][] keyPareBytes = getKeyPareBytes(keySize);

        String[] keyPairs=new String[2];

        keyPairs[0] = Base64.byteArrayToBase64(keyPareBytes[0]);
        keyPairs[1] = Base64.byteArrayToBase64(keyPareBytes[1]);

        return keyPairs;
    }


    /**
     * 生成秘钥对字节
     * @param keySize 多少比特
     * @return
     */
    public static byte[][] getKeyPareBytes(int keySize) throws NoSuchProviderException, NoSuchAlgorithmException {
        byte[][] keyPairBytes = new byte[2][];

        //RSA非对称加密，第二个参数是provider，表示sun提供的
        KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA", "SunRsaSign");

        generator.initialize(keySize,new SecureRandom());

        KeyPair pair = generator.generateKeyPair();

        //秘钥对，私钥
        keyPairBytes[0] = pair.getPrivate().getEncoded();

        //秘钥对，公钥
        keyPairBytes[1] = pair.getPublic().getEncoded();

        return keyPairBytes;
    }





}
