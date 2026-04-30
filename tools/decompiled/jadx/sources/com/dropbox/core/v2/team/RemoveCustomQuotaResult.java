package com.dropbox.core.v2.team;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.team.UserSelectorArg;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class RemoveCustomQuotaResult {
    public static final RemoveCustomQuotaResult OTHER = new RemoveCustomQuotaResult().withTag(Tag.OTHER);
    private Tag _tag;
    private UserSelectorArg invalidUserValue;
    private UserSelectorArg successValue;

    public enum Tag {
        SUCCESS,
        INVALID_USER,
        OTHER
    }

    private RemoveCustomQuotaResult() {
    }

    private RemoveCustomQuotaResult withTag(Tag tag) {
        RemoveCustomQuotaResult removeCustomQuotaResult = new RemoveCustomQuotaResult();
        removeCustomQuotaResult._tag = tag;
        return removeCustomQuotaResult;
    }

    private RemoveCustomQuotaResult withTagAndSuccess(Tag tag, UserSelectorArg userSelectorArg) {
        RemoveCustomQuotaResult removeCustomQuotaResult = new RemoveCustomQuotaResult();
        removeCustomQuotaResult._tag = tag;
        removeCustomQuotaResult.successValue = userSelectorArg;
        return removeCustomQuotaResult;
    }

    private RemoveCustomQuotaResult withTagAndInvalidUser(Tag tag, UserSelectorArg userSelectorArg) {
        RemoveCustomQuotaResult removeCustomQuotaResult = new RemoveCustomQuotaResult();
        removeCustomQuotaResult._tag = tag;
        removeCustomQuotaResult.invalidUserValue = userSelectorArg;
        return removeCustomQuotaResult;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isSuccess() {
        return this._tag == Tag.SUCCESS;
    }

    public static RemoveCustomQuotaResult success(UserSelectorArg userSelectorArg) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RemoveCustomQuotaResult().withTagAndSuccess(Tag.SUCCESS, userSelectorArg);
    }

    public UserSelectorArg getSuccessValue() {
        if (this._tag != Tag.SUCCESS) {
            throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this._tag.name());
        }
        return this.successValue;
    }

    public boolean isInvalidUser() {
        return this._tag == Tag.INVALID_USER;
    }

    public static RemoveCustomQuotaResult invalidUser(UserSelectorArg userSelectorArg) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RemoveCustomQuotaResult().withTagAndInvalidUser(Tag.INVALID_USER, userSelectorArg);
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
        if (obj == null || !(obj instanceof RemoveCustomQuotaResult)) {
            return false;
        }
        RemoveCustomQuotaResult removeCustomQuotaResult = (RemoveCustomQuotaResult) obj;
        if (this._tag != removeCustomQuotaResult._tag) {
            return false;
        }
        switch (this._tag) {
            case SUCCESS:
                return this.successValue == removeCustomQuotaResult.successValue || this.successValue.equals(removeCustomQuotaResult.successValue);
            case INVALID_USER:
                return this.invalidUserValue == removeCustomQuotaResult.invalidUserValue || this.invalidUserValue.equals(removeCustomQuotaResult.invalidUserValue);
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

    class Serializer extends UnionSerializer<RemoveCustomQuotaResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RemoveCustomQuotaResult removeCustomQuotaResult, g gVar) throws IOException {
            switch (removeCustomQuotaResult.tag()) {
                case SUCCESS:
                    gVar.e();
                    writeTag(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS, gVar);
                    gVar.a(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                    UserSelectorArg.Serializer.INSTANCE.serialize(removeCustomQuotaResult.successValue, gVar);
                    gVar.f();
                    break;
                case INVALID_USER:
                    gVar.e();
                    writeTag("invalid_user", gVar);
                    gVar.a("invalid_user");
                    UserSelectorArg.Serializer.INSTANCE.serialize(removeCustomQuotaResult.invalidUserValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RemoveCustomQuotaResult deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RemoveCustomQuotaResult removeCustomQuotaResultInvalidUser;
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
            if (AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS.equals(tag)) {
                expectField(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS, kVar);
                removeCustomQuotaResultInvalidUser = RemoveCustomQuotaResult.success(UserSelectorArg.Serializer.INSTANCE.deserialize(kVar));
            } else if ("invalid_user".equals(tag)) {
                expectField("invalid_user", kVar);
                removeCustomQuotaResultInvalidUser = RemoveCustomQuotaResult.invalidUser(UserSelectorArg.Serializer.INSTANCE.deserialize(kVar));
            } else {
                removeCustomQuotaResultInvalidUser = RemoveCustomQuotaResult.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return removeCustomQuotaResultInvalidUser;
        }
    }
}
