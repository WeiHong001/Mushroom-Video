package com.mogu.research;

import com.kotlin.basiclib.utils.CXAESUtil;
import com.kotlin.basiclib.utils.HttpMyUrlFetcher;
import com.kotlin.basiclib.utils.MD5EncryptNf;
import com.mogu.tv.utils.PlayIdSaveUtils;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import org.junit.Test;
import static org.junit.Assert.*;

public class CryptoContractTest {
    @Test public void contentIdDerivationAndKnownCbcVector() throws Exception {
        String key=MD5EncryptNf.encode(CXAESUtil.getSha1("1002".getBytes(StandardCharsets.UTF_8)));
        assertEquals("d93ecb04bf038154a1e2f6b2a848bc32",key);
        byte[] cipher=CXAESUtil.hexToByteArray("4323d141b0f0d4ba6e42d29b609544f4b47e6ca07bfdf3f6f7626fd43cdb67a6");
        assertEquals("Mushroom 1.1.4 synthetic sample",new String(CXAESUtil.decrypt(key,cipher),StandardCharsets.UTF_8));
    }

    @Test public void bothImageKeyPathsDecodeTheOriginalBytes() throws Exception {
        byte[] plain=asset("images/cover.png");
        assertArrayEquals(plain,HttpMyUrlFetcher.decodePayload("http://127.0.0.1:18814/images/normal-cover.bin",asset("images/normal-cover.bin")));
        assertArrayEquals(plain,HttpMyUrlFetcher.decodePayload("http://127.0.0.1:18814/images/vlog-cover.bin",asset("images/vlog-cover.bin")));
    }

    @Test public void plainImageFallbackDoesNotReturnConsumedBytes() throws Exception {
        byte[] plain=asset("images/cover.png");
        assertArrayEquals(plain,HttpMyUrlFetcher.decodePayload("http://127.0.0.1:18814/images/cover.png",plain));
    }

    @Test public void playbackIdsAreKeptPerUrl() {
        PlayIdSaveUtils.INSTANCE.savePlayData("1001","https://example.invalid/a");
        PlayIdSaveUtils.INSTANCE.savePlayData("1002","https://example.invalid/b");
        assertEquals("1001",PlayIdSaveUtils.INSTANCE.getPlayId("https://example.invalid/a"));
        assertEquals("1002",PlayIdSaveUtils.INSTANCE.getPlayId("https://example.invalid/b"));
        assertNull(PlayIdSaveUtils.INSTANCE.getPlayId("https://example.invalid/missing"));
    }

    private byte[] asset(String path) throws Exception {
        try(InputStream input=getClass().getClassLoader().getResourceAsStream(path)) {
            assertNotNull(path,input);
            return MD5EncryptNf.toByteArray(input);
        }
    }
}
