package org.mortbay.jetty.security;

import java.security.MessageDigest;
import org.mortbay.log.Log;
import org.mortbay.util.StringUtil;
import org.mortbay.util.TypeUtil;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Credential {
    public abstract boolean check(Object obj);

    public static Credential getCredential(String str) {
        if (str.startsWith(Crypt.__TYPE)) {
            return new Crypt(str);
        }
        if (str.startsWith(MD5.__TYPE)) {
            return new MD5(str);
        }
        return new Password(str);
    }

    public class Crypt extends Credential {
        public static final String __TYPE = "CRYPT:";
        private String _cooked;

        Crypt(String str) {
            this._cooked = str.startsWith(__TYPE) ? str.substring(__TYPE.length()) : str;
        }

        @Override // org.mortbay.jetty.security.Credential
        public boolean check(Object obj) {
            if (!(obj instanceof String) && !(obj instanceof Password)) {
                Log.warn(new StringBuffer().append("Can't check ").append(obj.getClass()).append(" against CRYPT").toString());
            }
            return this._cooked.equals(UnixCrypt.crypt(obj.toString(), this._cooked));
        }

        public static String crypt(String str, String str2) {
            return new StringBuffer().append(__TYPE).append(UnixCrypt.crypt(str2, str)).toString();
        }
    }

    public class MD5 extends Credential {
        public static final String __TYPE = "MD5:";
        private static MessageDigest __md;
        public static final Object __md5Lock = new Object();
        private byte[] _digest;

        MD5(String str) {
            this._digest = TypeUtil.parseBytes(str.startsWith(__TYPE) ? str.substring(__TYPE.length()) : str, 16);
        }

        public byte[] getDigest() {
            return this._digest;
        }

        @Override // org.mortbay.jetty.security.Credential
        public boolean check(Object obj) {
            byte[] bArrDigest;
            try {
                if ((obj instanceof Password) || (obj instanceof String)) {
                    synchronized (__md5Lock) {
                        if (__md == null) {
                            __md = MessageDigest.getInstance("MD5");
                        }
                        __md.reset();
                        __md.update(obj.toString().getBytes(StringUtil.__ISO_8859_1));
                        bArrDigest = __md.digest();
                    }
                    if (bArrDigest == null || bArrDigest.length != this._digest.length) {
                        return false;
                    }
                    for (int i = 0; i < bArrDigest.length; i++) {
                        if (bArrDigest[i] != this._digest[i]) {
                            return false;
                        }
                    }
                    return true;
                }
                if (obj instanceof MD5) {
                    MD5 md5 = (MD5) obj;
                    if (this._digest.length != md5._digest.length) {
                        return false;
                    }
                    for (int i2 = 0; i2 < this._digest.length; i2++) {
                        if (this._digest[i2] != md5._digest[i2]) {
                            return false;
                        }
                    }
                    return true;
                }
                if (obj instanceof Credential) {
                    return ((Credential) obj).check(this);
                }
                Log.warn(new StringBuffer().append("Can't check ").append(obj.getClass()).append(" against MD5").toString());
                return false;
            } catch (Exception e2) {
                Log.warn(e2);
                return false;
            }
        }

        public static String digest(String str) {
            byte[] bArrDigest;
            try {
                synchronized (__md5Lock) {
                    if (__md == null) {
                        try {
                            __md = MessageDigest.getInstance("MD5");
                        } catch (Exception e2) {
                            Log.warn(e2);
                            return null;
                        }
                    }
                    __md.reset();
                    __md.update(str.getBytes(StringUtil.__ISO_8859_1));
                    bArrDigest = __md.digest();
                }
                return new StringBuffer().append(__TYPE).append(TypeUtil.toString(bArrDigest, 16)).toString();
            } catch (Exception e3) {
                Log.warn(e3);
                return null;
            }
        }
    }
}
