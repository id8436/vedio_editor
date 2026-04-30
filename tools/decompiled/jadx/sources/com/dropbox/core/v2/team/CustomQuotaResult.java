package com.dropbox.core.v2.team;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.team.UserCustomQuotaResult;
import com.dropbox.core.v2.team.UserSelectorArg;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class CustomQuotaResult {
    public static final CustomQuotaResult OTHER = new CustomQuotaResult().withTag(Tag.OTHER);
    private Tag _tag;
    private UserSelectorArg invalidUserValue;
    private UserCustomQuotaResult successValue;

    public enum Tag {
        SUCCESS,
        INVALID_USER,
        OTHER
    }

    private CustomQuotaResult() {
    }

    private CustomQuotaResult withTag(Tag tag) {
        CustomQuotaResult customQuotaResult = new CustomQuotaResult();
        customQuotaResult._tag = tag;
        return customQuotaResult;
    }

    private CustomQuotaResult withTagAndSuccess(Tag tag, UserCustomQuotaResult userCustomQuotaResult) {
        CustomQuotaResult customQuotaResult = new CustomQuotaResult();
        customQuotaResult._tag = tag;
        customQuotaResult.successValue = userCustomQuotaResult;
        return customQuotaResult;
    }

    private CustomQuotaResult withTagAndInvalidUser(Tag tag, UserSelectorArg userSelectorArg) {
        CustomQuotaResult customQuotaResult = new CustomQuotaResult();
        customQuotaResult._tag = tag;
        customQuotaResult.invalidUserValue = userSelectorArg;
        return customQuotaResult;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isSuccess() {
        return this._tag == Tag.SUCCESS;
    }

    public static CustomQuotaResult success(UserCustomQuotaResult userCustomQuotaResult) {
        if (userCustomQuotaResult == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new CustomQuotaResult().withTagAndSuccess(Tag.SUCCESS, userCustomQuotaResult);
    }

    public UserCustomQuotaResult getSuccessValue() {
        if (this._tag != Tag.SUCCESS) {
            throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this._tag.name());
        }
        return this.successValue;
    }

    public boolean isInvalidUser() {
        return this._tag == Tag.INVALID_USER;
    }

    public static CustomQuotaResult invalidUser(UserSelectorArg userSelectorArg) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new CustomQuotaResult().withTagAndInvalidUser(Tag.INVALID_USER, userSelectorArg);
    }

    public UserSelectorArg getInvalidUserValue() {
        if (this._tag != Tag.INVALID_USER) {
            throw new IllegalStateException("Invalid tag: required Tag.INVALID_USER, but was Tag." + this._tag.name());
        }
        return this.invalidUserValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.successValue, this.invalidUserValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof CustomQuotaResult)) {
            return false;
        }
        CustomQuotaResult customQuotaResult = (CustomQuotaResult) obj;
        if (this._tag != customQuotaResult._tag) {
            return false;
        }
        switch (this._tag) {
            case SUCCESS:
                return this.successValue == customQuotaResult.successValue || this.successValue.equals(customQuotaResult.successValue);
            case INVALID_USER:
                return this.invalidUserValue == customQuotaResult.invalidUserValue || this.invalidUserValue.equals(customQuotaResult.invalidUserValue);
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

    class Serializer extends UnionSerializer<CustomQuotaResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(CustomQuotaResult customQuotaResult, g gVar) throws IOException {
            switch (customQuotaResult.tag()) {
                case SUCCESS:
                    gVar.e();
                    writeTag(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS, gVar);
                    UserCustomQuotaResult.Serializer.INSTANCE.serialize(customQuotaResult.successValue, gVar, true);
                    gVar.f();
                    break;
                case INVALID_USER:
                    gVar.e();
                    writeTag("invalid_user", gVar);
                    gVar.a("invalid_user");
                    UserSelectorArg.Serializer.INSTANCE.serialize(customQuotaResult.invalidUserValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public CustomQuotaResult deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            CustomQuotaResult customQuotaResultInvalidUser;
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
            if (AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS.equals(tag)) {
                customQuotaResultInvalidUser = CustomQuotaResult.success(UserCustomQuotaResult.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("invalid_user".equals(tag)) {
                expectField("invalid_user", kVar);
                customQuotaResultInvalidUser = CustomQuotaResult.invalidUser(UserSelectorArg.Serializer.INSTANCE.deserialize(kVar));
            } else {
                customQuotaResultInvalidUser = CustomQuotaResult.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return customQuotaResultInvalidUser;
        }
    }
}
