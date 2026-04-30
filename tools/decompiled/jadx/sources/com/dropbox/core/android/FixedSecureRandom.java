package com.dropbox.core.android;

import android.os.Build;
import android.os.Process;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;

/* JADX INFO: loaded from: classes2.dex */
public final class FixedSecureRandom extends SecureRandom {
    private static final byte[] BUILD_FINGERPRINT_AND_DEVICE_SERIAL = getBuildFingerprintAndDeviceSerial();
    private static final int VERSION_CODE_JELLY_BEAN_MR2 = 18;
    private static final long serialVersionUID = 0;

    public static SecureRandom get() {
        return Build.VERSION.SDK_INT > 18 ? new SecureRandom() : new FixedSecureRandom();
    }

    private FixedSecureRandom() {
        super(new LinuxPrngSecureRandomSpi(), new LinuxPrngSecureRandomProvider());
    }

    class LinuxPrngSecureRandomProvider extends Provider {
        private static final long serialVersionUID = 0;

        public LinuxPrngSecureRandomProvider() {
            super("LinuxPRNG", 1.0d, "A Linux-specific random number provider that uses /dev/urandom");
            put("SecureRandom.SHA1PRNG", LinuxPrngSecureRandomSpi.class.getName());
            put("SecureRandom.SHA1PRNG ImplementedIn", "Software");
        }
    }

    public class LinuxPrngSecureRandomSpi extends SecureRandomSpi {
        private static final File URANDOM_FILE = new File("/dev/urandom");
        private static final Object sLock = new Object();
        private static DataInputStream sUrandomIn;
        private static OutputStream sUrandomOut;
        private static final long serialVersionUID = 0;
        private boolean mSeeded;

        @Override // java.security.SecureRandomSpi
        protected void engineSetSeed(byte[] bArr) {
            OutputStream urandomOutputStream;
            try {
                synchronized (sLock) {
                    urandomOutputStream = getUrandomOutputStream();
                }
                urandomOutputStream.write(bArr);
                urandomOutputStream.flush();
            } catch (IOException e2) {
                Log.w(LinuxPrngSecureRandomSpi.class.getSimpleName(), "Failed to mix seed into " + URANDOM_FILE);
            } finally {
                this.mSeeded = true;
            }
        }

        @Override // java.security.SecureRandomSpi
        protected void engineNextBytes(byte[] bArr) {
            DataInputStream urandomInputStream;
            if (!this.mSeeded) {
                engineSetSeed(FixedSecureRandom.generateSeed());
            }
            try {
                synchronized (sLock) {
                    urandomInputStream = getUrandomInputStream();
                }
                synchronized (urandomInputStream) {
                    urandomInputStream.readFully(bArr);
                }
            } catch (IOException e2) {
                throw new SecurityException("Failed to read from " + URANDOM_FILE, e2);
            }
        }

        @Override // java.security.SecureRandomSpi
        protected byte[] engineGenerateSeed(int i) {
            byte[] bArr = new byte[i];
            engineNextBytes(bArr);
            return bArr;
        }

        private DataInputStream getUrandomInputStream() {
            DataInputStream dataInputStream;
            synchronized (sLock) {
                if (sUrandomIn == null) {
                    try {
                        sUrandomIn = new DataInputStream(new FileInputStream(URANDOM_FILE));
                    } catch (IOException e2) {
                        throw new SecurityException("Failed to open " + URANDOM_FILE + " for reading", e2);
                    }
                }
                dataInputStream = sUrandomIn;
            }
            return dataInputStream;
        }

        private OutputStream getUrandomOutputStream() throws IOException {
            OutputStream outputStream;
            synchronized (sLock) {
                if (sUrandomOut == null) {
                    sUrandomOut = new FileOutputStream(URANDOM_FILE);
                }
                outputStream = sUrandomOut;
            }
            return outputStream;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] generateSeed() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeLong(System.currentTimeMillis());
            dataOutputStream.writeLong(System.nanoTime());
            dataOutputStream.writeInt(Process.myPid());
            dataOutputStream.writeInt(Process.myUid());
            dataOutputStream.write(BUILD_FINGERPRINT_AND_DEVICE_SERIAL);
            dataOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new SecurityException("Failed to generate seed", e2);
        }
    }

    private static String getDeviceSerialNumber() {
        try {
            return (String) Build.class.getField("SERIAL").get(null);
        } catch (Exception e2) {
            return null;
        }
    }

    private static byte[] getBuildFingerprintAndDeviceSerial() {
        StringBuilder sb = new StringBuilder();
        String str = Build.FINGERPRINT;
        if (str != null) {
            sb.append(str);
        }
        String deviceSerialNumber = getDeviceSerialNumber();
        if (deviceSerialNumber != null) {
            sb.append(deviceSerialNumber);
        }
        try {
            return sb.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UTF-8 encoding not supported");
        }
    }
}
