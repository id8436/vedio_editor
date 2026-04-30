package com.adobe.DeviceInfo;

import android.util.Log;
import com.google.common.base.Ascii;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: DeviceInfoProvider.java */
/* JADX INFO: loaded from: classes.dex */
final class DeviceInfoCipher {
    private static final String HEX = "0123456789ABCDEF";
    private static DeviceInfoCipher sharedInstance = null;
    private final String _seed = "EE675CF6-0C14-42F6-90F4-B70EA27F";
    SecretKeySpec sks;

    private DeviceInfoCipher() {
        this.sks = null;
        this.sks = new SecretKeySpec("EE675CF6-0C14-42F6-90F4-B70EA27F".getBytes(), "AES");
    }

    static DeviceInfoCipher getSharedCipher() {
        if (sharedInstance == null) {
            sharedInstance = new DeviceInfoCipher();
        }
        return sharedInstance;
    }

    void _appendHex(StringBuffer stringBuffer, byte b2) {
        stringBuffer.append(HEX.charAt((b2 >> 4) & 15)).append(HEX.charAt(b2 & Ascii.SI));
    }

    String _tohex(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b2 : bArr) {
            _appendHex(stringBuffer, b2);
        }
        return stringBuffer.toString();
    }

    public byte[] _toByte(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = Integer.valueOf(str.substring(i * 2, (i * 2) + 2), 16).byteValue();
        }
        return bArr;
    }

    String encrypt(String str) {
        try {
            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(1, this.sks);
            return _tohex(cipher.doFinal(str.getBytes()));
        } catch (Exception e2) {
            Log.e(getClass().getSimpleName(), e2.getMessage(), e2);
            return str;
        }
    }
}
