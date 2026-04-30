package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.teamlog.DurationLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class WebSessionsFixedLengthPolicy {
    private Tag _tag;
    private DurationLogInfo definedValue;
    public static final WebSessionsFixedLengthPolicy UNDEFINED = new WebSessionsFixedLengthPolicy().withTag(Tag.UNDEFINED);
    public static final WebSessionsFixedLengthPolicy OTHER = new WebSessionsFixedLengthPolicy().withTag(Tag.OTHER);

    public enum Tag {
        DEFINED,
        UNDEFINED,
        OTHER
    }

    private WebSessionsFixedLengthPolicy() {
    }

    private WebSessionsFixedLengthPolicy withTag(Tag tag) {
        WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy = new WebSessionsFixedLengthPolicy();
        webSessionsFixedLengthPolicy._tag = tag;
        return webSessionsFixedLengthPolicy;
    }

    private WebSessionsFixedLengthPolicy withTagAndDefined(Tag tag, DurationLogInfo durationLogInfo) {
        WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy = new WebSessionsFixedLengthPolicy();
        webSessionsFixedLengthPolicy._tag = tag;
        webSessionsFixedLengthPolicy.definedValue = durationLogInfo;
        return webSessionsFixedLengthPolicy;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isDefined() {
        return this._tag == Tag.DEFINED;
    }

    public static WebSessionsFixedLengthPolicy defined(DurationLogInfo durationLogInfo) {
        if (durationLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new WebSessionsFixedLengthPolicy().withTagAndDefined(Tag.DEFINED, durationLogInfo);
    }

    public DurationLogInfo getDefinedValue() {
        if (this._tag != Tag.DEFINED) {
            throw new IllegalStateException("Invalid tag: required Tag.DEFINED, but was Tag." + this._tag.name());
        }
        return this.definedValue;
    }

    public boolean isUndefined() {
        return this._tag == Tag.UNDEFINED;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.definedValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof WebSessionsFixedLengthPolicy)) {
            return false;
        }
        WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy = (WebSessionsFixedLengthPolicy) obj;
        if (this._tag != webSessionsFixedLengthPolicy._tag) {
            return false;
        }
        switch (this._tag) {
            case DEFINED:
                return this.definedValue == webSessionsFixedLengthPolicy.definedValue || this.definedValue.equals(webSessionsFixedLengthPolicy.definedValue);
            case UNDEFINED:
                return true;
            case OTHER:
                return true;
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<WebSessionsFixedLengthPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy, g gVar) throws IOException {
            switch (webSessionsFixedLengthPolicy.tag()) {
                case DEFINED:
                    gVar.e();
                    writeTag("defined", gVar);
                    DurationLogInfo.Serializer.INSTANCE.serialize(webSessionsFixedLengthPolicy.definedValue, gVar, true);
                    gVar.f();
                    break;
                case UNDEFINED:
                    gVar.b("undefined");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public WebSessionsFixedLengthPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicyDefined;
            if (kVar.c() == o.VALUE_STRING) {
                tag = getStringValue(kVar);
                kVar.a();
                z = true;
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("defined".equals(tag)) {
                webSessionsFixedLengthPolicyDefined = WebSessionsFixedLengthPolicy.defined(DurationLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("undefined".equals(tag)) {
                webSessionsFixedLengthPolicyDefined = WebSessionsFixedLengthPolicy.UNDEFINED;
            } else {
                webSessionsFixedLengthPolicyDefined = WebSessionsFixedLengthPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return webSessionsFixedLengthPolicyDefined;
        }
    }
}
