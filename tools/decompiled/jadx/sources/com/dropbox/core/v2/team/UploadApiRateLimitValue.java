package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class UploadApiRateLimitValue {
    private Tag _tag;
    private Long limitValue;
    public static final UploadApiRateLimitValue UNLIMITED = new UploadApiRateLimitValue().withTag(Tag.UNLIMITED);
    public static final UploadApiRateLimitValue OTHER = new UploadApiRateLimitValue().withTag(Tag.OTHER);

    public enum Tag {
        UNLIMITED,
        LIMIT,
        OTHER
    }

    private UploadApiRateLimitValue() {
    }

    private UploadApiRateLimitValue withTag(Tag tag) {
        UploadApiRateLimitValue uploadApiRateLimitValue = new UploadApiRateLimitValue();
        uploadApiRateLimitValue._tag = tag;
        return uploadApiRateLimitValue;
    }

    private UploadApiRateLimitValue withTagAndLimit(Tag tag, Long l) {
        UploadApiRateLimitValue uploadApiRateLimitValue = new UploadApiRateLimitValue();
        uploadApiRateLimitValue._tag = tag;
        uploadApiRateLimitValue.limitValue = l;
        return uploadApiRateLimitValue;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isUnlimited() {
        return this._tag == Tag.UNLIMITED;
    }

    public boolean isLimit() {
        return this._tag == Tag.LIMIT;
    }

    public static UploadApiRateLimitValue limit(long j) {
        return new UploadApiRateLimitValue().withTagAndLimit(Tag.LIMIT, Long.valueOf(j));
    }

    public long getLimitValue() {
        if (this._tag != Tag.LIMIT) {
            throw new IllegalStateException("Invalid tag: required Tag.LIMIT, but was Tag." + this._tag.name());
        }
        return this.limitValue.longValue();
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.limitValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof UploadApiRateLimitValue)) {
            UploadApiRateLimitValue uploadApiRateLimitValue = (UploadApiRateLimitValue) obj;
            if (this._tag != uploadApiRateLimitValue._tag) {
                return false;
            }
            switch (this._tag) {
                case UNLIMITED:
                case OTHER:
                    return true;
                case LIMIT:
                    return this.limitValue == uploadApiRateLimitValue.limitValue;
                default:
                    return false;
            }
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<UploadApiRateLimitValue> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UploadApiRateLimitValue uploadApiRateLimitValue, g gVar) throws IOException {
            switch (uploadApiRateLimitValue.tag()) {
                case UNLIMITED:
                    gVar.b("unlimited");
                    break;
                case LIMIT:
                    gVar.e();
                    writeTag("limit", gVar);
                    gVar.a("limit");
                    StoneSerializers.uInt32().serialize(uploadApiRateLimitValue.limitValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UploadApiRateLimitValue deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UploadApiRateLimitValue uploadApiRateLimitValueLimit;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("unlimited".equals(tag)) {
                uploadApiRateLimitValueLimit = UploadApiRateLimitValue.UNLIMITED;
            } else if ("limit".equals(tag)) {
                expectField("limit", kVar);
                uploadApiRateLimitValueLimit = UploadApiRateLimitValue.limit(StoneSerializers.uInt32().deserialize(kVar).longValue());
            } else {
                uploadApiRateLimitValueLimit = UploadApiRateLimitValue.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return uploadApiRateLimitValueLimit;
        }
    }
}
