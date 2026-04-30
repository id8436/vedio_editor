package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.WebSessionsIdleLengthPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class WebSessionsChangeIdleLengthPolicyDetails {
    protected final WebSessionsIdleLengthPolicy newValue;
    protected final WebSessionsIdleLengthPolicy previousValue;

    public WebSessionsChangeIdleLengthPolicyDetails(WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy, WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy2) {
        this.newValue = webSessionsIdleLengthPolicy;
        this.previousValue = webSessionsIdleLengthPolicy2;
    }

    public WebSessionsChangeIdleLengthPolicyDetails() {
        this(null, null);
    }

    public WebSessionsIdleLengthPolicy getNewValue() {
        return this.newValue;
    }

    public WebSessionsIdleLengthPolicy getPreviousValue() {
        return this.previousValue;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected WebSessionsIdleLengthPolicy newValue = null;
        protected WebSessionsIdleLengthPolicy previousValue = null;

        protected Builder() {
        }

        public Builder withNewValue(WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy) {
            this.newValue = webSessionsIdleLengthPolicy;
            return this;
        }

        public Builder withPreviousValue(WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy) {
            this.previousValue = webSessionsIdleLengthPolicy;
            return this;
        }

        public WebSessionsChangeIdleLengthPolicyDetails build() {
            return new WebSessionsChangeIdleLengthPolicyDetails(this.newValue, this.previousValue);
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
            WebSessionsChangeIdleLengthPolicyDetails webSessionsChangeIdleLengthPolicyDetails = (WebSessionsChangeIdleLengthPolicyDetails) obj;
            if (this.newValue == webSessionsChangeIdleLengthPolicyDetails.newValue || (this.newValue != null && this.newValue.equals(webSessionsChangeIdleLengthPolicyDetails.newValue))) {
                if (this.previousValue == webSessionsChangeIdleLengthPolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(webSessionsChangeIdleLengthPolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<WebSessionsChangeIdleLengthPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(WebSessionsChangeIdleLengthPolicyDetails webSessionsChangeIdleLengthPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (webSessionsChangeIdleLengthPolicyDetails.newValue != null) {
                gVar.a("new_value");
                StoneSerializers.nullable(WebSessionsIdleLengthPolicy.Serializer.INSTANCE).serialize(webSessionsChangeIdleLengthPolicyDetails.newValue, gVar);
            }
            if (webSessionsChangeIdleLengthPolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(WebSessionsIdleLengthPolicy.Serializer.INSTANCE).serialize(webSessionsChangeIdleLengthPolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public WebSessionsChangeIdleLengthPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy;
            WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy2;
            WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy5 = webSessionsIdleLengthPolicy3;
                        webSessionsIdleLengthPolicy2 = (WebSessionsIdleLengthPolicy) StoneSerializers.nullable(WebSessionsIdleLengthPolicy.Serializer.INSTANCE).deserialize(kVar);
                        webSessionsIdleLengthPolicy = webSessionsIdleLengthPolicy5;
                    } else if ("previous_value".equals(strD)) {
                        webSessionsIdleLengthPolicy = (WebSessionsIdleLengthPolicy) StoneSerializers.nullable(WebSessionsIdleLengthPolicy.Serializer.INSTANCE).deserialize(kVar);
                        webSessionsIdleLengthPolicy2 = webSessionsIdleLengthPolicy4;
                    } else {
                        skipValue(kVar);
                        webSessionsIdleLengthPolicy = webSessionsIdleLengthPolicy3;
                        webSessionsIdleLengthPolicy2 = webSessionsIdleLengthPolicy4;
                    }
                    webSessionsIdleLengthPolicy4 = webSessionsIdleLengthPolicy2;
                    webSessionsIdleLengthPolicy3 = webSessionsIdleLengthPolicy;
                }
                WebSessionsChangeIdleLengthPolicyDetails webSessionsChangeIdleLengthPolicyDetails = new WebSessionsChangeIdleLengthPolicyDetails(webSessionsIdleLengthPolicy4, webSessionsIdleLengthPolicy3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return webSessionsChangeIdleLengthPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
