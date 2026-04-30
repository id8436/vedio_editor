package javax.mail;

import com.behance.sdk.util.BehanceSDKConstants;

/* JADX INFO: loaded from: classes3.dex */
public class Provider {
    private String className;
    private String protocol;
    private Type type;
    private String vendor;
    private String version;

    public class Type {
        public static final Type STORE = new Type("STORE");
        public static final Type TRANSPORT = new Type("TRANSPORT");
        private String type;

        private Type(String str) {
            this.type = str;
        }

        public String toString() {
            return this.type;
        }
    }

    public Provider(Type type, String str, String str2, String str3, String str4) {
        this.type = type;
        this.protocol = str;
        this.className = str2;
        this.vendor = str3;
        this.version = str4;
    }

    public Type getType() {
        return this.type;
    }

    public String getProtocol() {
        return this.protocol;
    }

    public String getClassName() {
        return this.className;
    }

    public String getVendor() {
        return this.vendor;
    }

    public String getVersion() {
        return this.version;
    }

    public String toString() {
        String string = new StringBuffer().append("javax.mail.Provider[").append(this.type).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this.protocol).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this.className).toString();
        if (this.vendor != null) {
            string = new StringBuffer().append(string).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this.vendor).toString();
        }
        if (this.version != null) {
            string = new StringBuffer().append(string).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this.version).toString();
        }
        return new StringBuffer().append(string).append("]").toString();
    }
}
