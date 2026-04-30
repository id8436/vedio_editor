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
public final class WebSessionsIdleLengthPolicy {
    private Tag _tag;
    private DurationLogInfo definedValue;
    public static final WebSessionsIdleLengthPolicy UNDEFINED = new WebSessionsIdleLengthPolicy().withTag(Tag.UNDEFINED);
    public static final WebSessionsIdleLengthPolicy OTHER = new WebSessionsIdleLengthPolicy().withTag(Tag.OTHER);

    public enum Tag {
        DEFINED,
        UNDEFINED,
        OTHER
    }

    private WebSessionsIdleLengthPolicy() {
    }

    private WebSessionsIdleLengthPolicy withTag(Tag tag) {
        WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy = new WebSessionsIdleLengthPolicy();
        webSessionsIdleLengthPolicy._tag = tag;
        return webSessionsIdleLengthPolicy;
    }

    private WebSessionsIdleLengthPolicy withTagAndDefined(Tag tag, DurationLogInfo durationLogInfo) {
        WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy = new WebSessionsIdleLengthPolicy();
        webSessionsIdleLengthPolicy._tag = tag;
        webSessionsIdleLengthPolicy.definedValue = durationLogInfo;
        return webSessionsIdleLengthPolicy;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isDefined() {
        return this._tag == Tag.DEFINED;
    }

    public static WebSessionsIdleLengthPolicy defined(DurationLogInfo durationLogInfo) {
        if (durationLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new WebSessionsIdleLengthPolicy().withTagAndDefined(Tag.DEFINED, durationLogInfo);
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
        if (obj == null || !(obj instanceof WebSessionsIdleLengthPolicy)) {
            return false;
        }
        WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy = (WebSessionsIdleLengthPolicy) obj;
        if (this._tag != webSessionsIdleLengthPolicy._tag) {
            return false;
        }
        switch (this._tag) {
            case DEFINED:
                return this.definedValue == webSessionsIdleLengthPolicy.definedValue || this.definedValue.equals(webSessionsIdleLengthPolicy.definedValue);
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

    class Serializer extends UnionSerializer<WebSessionsIdleLengthPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy, g gVar) throws IOException {
            switch (webSessionsIdleLengthPolicy.tag()) {
                case DEFINED:
                    gVar.e();
                    writeTag("defined", gVar);
                    DurationLogInfo.Serializer.INSTANCE.serialize(webSessionsIdleLengthPolicy.definedValue, gVar, true);
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
        public WebSessionsIdleLengthPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicyDefined;
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
                webSessionsIdleLengthPolicyDefined = WebSessionsIdleLengthPolicy.defined(DurationLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("undefined".equals(tag)) {
                webSessionsIdleLengthPolicyDefined = WebSessionsIdleLengthPolicy.UNDEFINED;
            } else {
                webSessionsIdleLengthPolicyDefined = WebSessionsIdleLengthPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return webSessionsIdleLengthPolicyDefined;
        }
    }
}
