package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.team.HasTeamSharedDropboxValue;
import com.dropbox.core.v2.team.UploadApiRateLimitValue;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class FeatureValue {
    public static final FeatureValue OTHER = new FeatureValue().withTag(Tag.OTHER);
    private Tag _tag;
    private HasTeamSharedDropboxValue hasTeamSharedDropboxValue;
    private UploadApiRateLimitValue uploadApiRateLimitValue;

    public enum Tag {
        UPLOAD_API_RATE_LIMIT,
        HAS_TEAM_SHARED_DROPBOX,
        OTHER
    }

    private FeatureValue() {
    }

    private FeatureValue withTag(Tag tag) {
        FeatureValue featureValue = new FeatureValue();
        featureValue._tag = tag;
        return featureValue;
    }

    private FeatureValue withTagAndUploadApiRateLimit(Tag tag, UploadApiRateLimitValue uploadApiRateLimitValue) {
        FeatureValue featureValue = new FeatureValue();
        featureValue._tag = tag;
        featureValue.uploadApiRateLimitValue = uploadApiRateLimitValue;
        return featureValue;
    }

    private FeatureValue withTagAndHasTeamSharedDropbox(Tag tag, HasTeamSharedDropboxValue hasTeamSharedDropboxValue) {
        FeatureValue featureValue = new FeatureValue();
        featureValue._tag = tag;
        featureValue.hasTeamSharedDropboxValue = hasTeamSharedDropboxValue;
        return featureValue;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isUploadApiRateLimit() {
        return this._tag == Tag.UPLOAD_API_RATE_LIMIT;
    }

    public static FeatureValue uploadApiRateLimit(UploadApiRateLimitValue uploadApiRateLimitValue) {
        if (uploadApiRateLimitValue == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new FeatureValue().withTagAndUploadApiRateLimit(Tag.UPLOAD_API_RATE_LIMIT, uploadApiRateLimitValue);
    }

    public UploadApiRateLimitValue getUploadApiRateLimitValue() {
        if (this._tag != Tag.UPLOAD_API_RATE_LIMIT) {
            throw new IllegalStateException("Invalid tag: required Tag.UPLOAD_API_RATE_LIMIT, but was Tag." + this._tag.name());
        }
        return this.uploadApiRateLimitValue;
    }

    public boolean isHasTeamSharedDropbox() {
        return this._tag == Tag.HAS_TEAM_SHARED_DROPBOX;
    }

    public static FeatureValue hasTeamSharedDropbox(HasTeamSharedDropboxValue hasTeamSharedDropboxValue) {
        if (hasTeamSharedDropboxValue == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new FeatureValue().withTagAndHasTeamSharedDropbox(Tag.HAS_TEAM_SHARED_DROPBOX, hasTeamSharedDropboxValue);
    }

    public HasTeamSharedDropboxValue getHasTeamSharedDropboxValue() {
        if (this._tag != Tag.HAS_TEAM_SHARED_DROPBOX) {
            throw new IllegalStateException("Invalid tag: required Tag.HAS_TEAM_SHARED_DROPBOX, but was Tag." + this._tag.name());
        }
        return this.hasTeamSharedDropboxValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.uploadApiRateLimitValue, this.hasTeamSharedDropboxValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof FeatureValue)) {
            return false;
        }
        FeatureValue featureValue = (FeatureValue) obj;
        if (this._tag != featureValue._tag) {
            return false;
        }
        switch (this._tag) {
            case UPLOAD_API_RATE_LIMIT:
                return this.uploadApiRateLimitValue == featureValue.uploadApiRateLimitValue || this.uploadApiRateLimitValue.equals(featureValue.uploadApiRateLimitValue);
            case HAS_TEAM_SHARED_DROPBOX:
                return this.hasTeamSharedDropboxValue == featureValue.hasTeamSharedDropboxValue || this.hasTeamSharedDropboxValue.equals(featureValue.hasTeamSharedDropboxValue);
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

    class Serializer extends UnionSerializer<FeatureValue> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(FeatureValue featureValue, g gVar) throws IOException {
            switch (featureValue.tag()) {
                case UPLOAD_API_RATE_LIMIT:
                    gVar.e();
                    writeTag("upload_api_rate_limit", gVar);
                    gVar.a("upload_api_rate_limit");
                    UploadApiRateLimitValue.Serializer.INSTANCE.serialize(featureValue.uploadApiRateLimitValue, gVar);
                    gVar.f();
                    break;
                case HAS_TEAM_SHARED_DROPBOX:
                    gVar.e();
                    writeTag("has_team_shared_dropbox", gVar);
                    gVar.a("has_team_shared_dropbox");
                    HasTeamSharedDropboxValue.Serializer.INSTANCE.serialize(featureValue.hasTeamSharedDropboxValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public FeatureValue deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            FeatureValue featureValueHasTeamSharedDropbox;
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
            if ("upload_api_rate_limit".equals(tag)) {
                expectField("upload_api_rate_limit", kVar);
                featureValueHasTeamSharedDropbox = FeatureValue.uploadApiRateLimit(UploadApiRateLimitValue.Serializer.INSTANCE.deserialize(kVar));
            } else if ("has_team_shared_dropbox".equals(tag)) {
                expectField("has_team_shared_dropbox", kVar);
                featureValueHasTeamSharedDropbox = FeatureValue.hasTeamSharedDropbox(HasTeamSharedDropboxValue.Serializer.INSTANCE.deserialize(kVar));
            } else {
                featureValueHasTeamSharedDropbox = FeatureValue.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return featureValueHasTeamSharedDropbox;
        }
    }
}
