package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.WebSessionsFixedLengthPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class WebSessionsChangeFixedLengthPolicyDetails {
    protected final WebSessionsFixedLengthPolicy newValue;
    protected final WebSessionsFixedLengthPolicy previousValue;

    public WebSessionsChangeFixedLengthPolicyDetails(WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy, WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy2) {
        this.newValue = webSessionsFixedLengthPolicy;
        this.previousValue = webSessionsFixedLengthPolicy2;
    }

    public WebSessionsChangeFixedLengthPolicyDetails() {
        this(null, null);
    }

    public WebSessionsFixedLengthPolicy getNewValue() {
        return this.newValue;
    }

    public WebSessionsFixedLengthPolicy getPreviousValue() {
        return this.previousValue;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected WebSessionsFixedLengthPolicy newValue = null;
        protected WebSessionsFixedLengthPolicy previousValue = null;

        protected Builder() {
        }

        public Builder withNewValue(WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy) {
            this.newValue = webSessionsFixedLengthPolicy;
            return this;
        }

        public Builder withPreviousValue(WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy) {
            this.previousValue = webSessionsFixedLengthPolicy;
            return this;
        }

        public WebSessionsChangeFixedLengthPolicyDetails build() {
            return new WebSessionsChangeFixedLengthPolicyDetails(this.newValue, this.previousValue);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            WebSessionsChangeFixedLengthPolicyDetails webSessionsChangeFixedLengthPolicyDetails = (WebSessionsChangeFixedLengthPolicyDetails) obj;
            if (this.newValue == webSessionsChangeFixedLengthPolicyDetails.newValue || (this.newValue != null && this.newValue.equals(webSessionsChangeFixedLengthPolicyDetails.newValue))) {
                if (this.previousValue == webSessionsChangeFixedLengthPolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(webSessionsChangeFixedLengthPolicyDetails.previousValue)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<WebSessionsChangeFixedLengthPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(WebSessionsChangeFixedLengthPolicyDetails webSessionsChangeFixedLengthPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (webSessionsChangeFixedLengthPolicyDetails.newValue != null) {
                gVar.a("new_value");
                StoneSerializers.nullable(WebSessionsFixedLengthPolicy.Serializer.INSTANCE).serialize(webSessionsChangeFixedLengthPolicyDetails.newValue, gVar);
            }
            if (webSessionsChangeFixedLengthPolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(WebSessionsFixedLengthPolicy.Serializer.INSTANCE).serialize(webSessionsChangeFixedLengthPolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public WebSessionsChangeFixedLengthPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy;
            WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy2;
            WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy5 = webSessionsFixedLengthPolicy3;
                        webSessionsFixedLengthPolicy2 = (WebSessionsFixedLengthPolicy) StoneSerializers.nullable(WebSessionsFixedLengthPolicy.Serializer.INSTANCE).deserialize(kVar);
                        webSessionsFixedLengthPolicy = webSessionsFixedLengthPolicy5;
                    } else if ("previous_value".equals(strD)) {
                        webSessionsFixedLengthPolicy = (WebSessionsFixedLengthPolicy) StoneSerializers.nullable(WebSessionsFixedLengthPolicy.Serializer.INSTANCE).deserialize(kVar);
                        webSessionsFixedLengthPolicy2 = webSessionsFixedLengthPolicy4;
                    } else {
                        skipValue(kVar);
                        webSessionsFixedLengthPolicy = webSessionsFixedLengthPolicy3;
                        webSessionsFixedLengthPolicy2 = webSessionsFixedLengthPolicy4;
                    }
                    webSessionsFixedLengthPolicy4 = webSessionsFixedLengthPolicy2;
                    webSessionsFixedLengthPolicy3 = webSessionsFixedLengthPolicy;
                }
                WebSessionsChangeFixedLengthPolicyDetails webSessionsChangeFixedLengthPolicyDetails = new WebSessionsChangeFixedLengthPolicyDetails(webSessionsFixedLengthPolicy4, webSessionsFixedLengthPolicy3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return webSessionsChangeFixedLengthPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
