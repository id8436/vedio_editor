package org.mortbay.jetty.security;

import com.google.common.base.Ascii;
import java.io.IOException;
import org.mortbay.jetty.security.Credential;
import org.mortbay.log.Log;

/* JADX INFO: loaded from: classes3.dex */
public class Password extends Credential {
    public static final String __OBFUSCATE = "OBF:";
    private String _pw;

    public Password(String str) {
        this._pw = str;
        while (this._pw != null && this._pw.startsWith(__OBFUSCATE)) {
            this._pw = deobfuscate(this._pw);
        }
    }

    public String toString() {
        return this._pw;
    }

    public String toStarString() {
        return "*****************************************************".substring(0, this._pw.length());
    }

    @Override // org.mortbay.jetty.security.Credential
    public boolean check(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Password) {
            return obj.equals(this._pw);
        }
        if (obj instanceof String) {
            return obj.equals(this._pw);
        }
        if (obj instanceof Credential) {
            return ((Credential) obj).check(this._pw);
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (obj instanceof Password) {
            Password password = (Password) obj;
            return password._pw == this._pw || (this._pw != null && this._pw.equals(password._pw));
        }
        if (obj instanceof String) {
            return obj.equals(this._pw);
        }
        return false;
    }

    public int hashCode() {
        return this._pw == null ? super.hashCode() : this._pw.hashCode();
    }

    public static String obfuscate(String str) {
        String string;
        StringBuffer stringBuffer = new StringBuffer();
        byte[] bytes = str.getBytes();
        synchronized (stringBuffer) {
            stringBuffer.append(__OBFUSCATE);
            for (int i = 0; i < bytes.length; i++) {
                byte b2 = bytes[i];
                byte b3 = bytes[str.length() - (i + 1)];
                String string2 = Integer.toString(((b2 + Ascii.DEL) - b3) + ((b2 + Ascii.DEL + b3) * 256), 36);
                switch (string2.length()) {
                    case 1:
                        stringBuffer.append('0');
                    case 2:
                        stringBuffer.append('0');
                    case 3:
                        stringBuffer.append('0');
                        break;
                }
                stringBuffer.append(string2);
            }
            string = stringBuffer.toString();
        }
        return string;
    }

    public static String deobfuscate(String str) {
        if (str.startsWith(__OBFUSCATE)) {
            str = str.substring(4);
        }
        byte[] bArr = new byte[str.length() / 2];
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            int i3 = Integer.parseInt(str.substring(i, i + 4), 36);
            bArr[i2] = (byte) ((((i3 / 256) + (i3 % 256)) - 254) / 2);
            i += 4;
            i2++;
        }
        return new String(bArr, 0, i2);
    }

    public static Password getPassword(String str, String str2, String str3) {
        String property = System.getProperty(str, str2);
        if (property == null || property.length() == 0) {
            try {
                System.out.print(new StringBuffer().append(str).append((str3 == null || str3.length() <= 0) ? "" : " [dft]").append(" : ").toString());
                System.out.flush();
                byte[] bArr = new byte[512];
                int i = System.in.read(bArr);
                if (i > 0) {
                    property = new String(bArr, 0, i).trim();
                }
            } catch (IOException e2) {
                Log.warn(Log.EXCEPTION, (Throwable) e2);
            }
            if (property == null || property.length() == 0) {
                property = str3;
            }
        }
        return new Password(property);
    }

    public static void main(String[] strArr) {
        if (strArr.length != 1 && strArr.length != 2) {
            System.err.println("Usage - java org.mortbay.jetty.security.Password [<user>] <password>");
            System.err.println("If the password is ?, the user will be prompted for the password");
            System.exit(1);
        }
        String str = strArr[strArr.length == 1 ? (char) 0 : (char) 1];
        Password password = "?".equals(str) ? new Password(str) : new Password(str);
        System.err.println(password.toString());
        System.err.println(obfuscate(password.toString()));
        System.err.println(Credential.MD5.digest(str));
        if (strArr.length == 2) {
            System.err.println(Credential.Crypt.crypt(strArr[0], password.toString()));
        }
    }
}
