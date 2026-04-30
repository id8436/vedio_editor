package com.dropbox.core.v2.sharing;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.FileMemberActionError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class FileMemberActionIndividualResult {
    private Tag _tag;
    private FileMemberActionError memberErrorValue;
    private AccessLevel successValue;

    public enum Tag {
        SUCCESS,
        MEMBER_ERROR
    }

    private FileMemberActionIndividualResult() {
    }

    private FileMemberActionIndividualResult withTag(Tag tag) {
        FileMemberActionIndividualResult fileMemberActionIndividualResult = new FileMemberActionIndividualResult();
        fileMemberActionIndividualResult._tag = tag;
        return fileMemberActionIndividualResult;
    }

    private FileMemberActionIndividualResult withTagAndSuccess(Tag tag, AccessLevel accessLevel) {
        FileMemberActionIndividualResult fileMemberActionIndividualResult = new FileMemberActionIndividualResult();
        fileMemberActionIndividualResult._tag = tag;
        fileMemberActionIndividualResult.successValue = accessLevel;
        return fileMemberActionIndividualResult;
    }

    private FileMemberActionIndividualResult withTagAndMemberError(Tag tag, FileMemberActionError fileMemberActionError) {
        FileMemberActionIndividualResult fileMemberActionIndividualResult = new FileMemberActionIndividualResult();
        fileMemberActionIndividualResult._tag = tag;
        fileMemberActionIndividualResult.memberErrorValue = fileMemberActionError;
        return fileMemberActionIndividualResult;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isSuccess() {
        return this._tag == Tag.SUCCESS;
    }

    public static FileMemberActionIndividualResult success(AccessLevel accessLevel) {
        return new FileMemberActionIndividualResult().withTagAndSuccess(Tag.SUCCESS, accessLevel);
    }

    public static FileMemberActionIndividualResult success() {
        return success(null);
    }

    public AccessLevel getSuccessValue() {
        if (this._tag != Tag.SUCCESS) {
            throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this._tag.name());
        }
        return this.successValue;
    }

    public boolean isMemberError() {
        return this._tag == Tag.MEMBER_ERROR;
    }

    public static FileMemberActionIndividualResult memberError(FileMemberActionError fileMemberActionError) {
        if (fileMemberActionError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new FileMemberActionIndividualResult().withTagAndMemberError(Tag.MEMBER_ERROR, fileMemberActionError);
    }

    public FileMemberActionError getMemberErrorValue() {
        if (this._tag != Tag.MEMBER_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_ERROR, but was Tag." + this._tag.name());
        }
        return this.memberErrorValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.successValue, this.memberErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof FileMemberActionIndividualResult)) {
            return false;
        }
        FileMemberActionIndividualResult fileMemberActionIndividualResult = (FileMemberActionIndividualResult) obj;
        if (this._tag != fileMemberActionIndividualResult._tag) {
            return false;
        }
        switch (this._tag) {
            case SUCCESS:
                return this.successValue == fileMemberActionIndividualResult.successValue || (this.successValue != null && this.successValue.equals(fileMemberActionIndividualResult.successValue));
            case MEMBER_ERROR:
                return this.memberErrorValue == fileMemberActionIndividualResult.memberErrorValue || this.memberErrorValue.equals(fileMemberActionIndividualResult.memberErrorValue);
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

    class Serializer extends UnionSerializer<FileMemberActionIndividualResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(FileMemberActionIndividualResult fileMemberActionIndividualResult, g gVar) throws IOException {
            switch (fileMemberActionIndividualResult.tag()) {
                case SUCCESS:
                    gVar.e();
                    writeTag(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS, gVar);
                    gVar.a(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                    StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize(fileMemberActionIndividualResult.successValue, gVar);
                    gVar.f();
                    return;
                case MEMBER_ERROR:
                    gVar.e();
                    writeTag("member_error", gVar);
                    gVar.a("member_error");
                    FileMemberActionError.Serializer.INSTANCE.serialize(fileMemberActionIndividualResult.memberErrorValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + fileMemberActionIndividualResult.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public FileMemberActionIndividualResult deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            FileMemberActionIndividualResult fileMemberActionIndividualResultMemberError;
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
                AccessLevel accessLevel = null;
                if (kVar.c() != o.END_OBJECT) {
                    expectField(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS, kVar);
                    accessLevel = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(kVar);
                }
                if (accessLevel == null) {
                    fileMemberActionIndividualResultMemberError = FileMemberActionIndividualResult.success();
                } else {
                    fileMemberActionIndividualResultMemberError = FileMemberActionIndividualResult.success(accessLevel);
                }
            } else if ("member_error".equals(tag)) {
                expectField("member_error", kVar);
                fileMemberActionIndividualResultMemberError = FileMemberActionIndividualResult.memberError(FileMemberActionError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return fileMemberActionIndividualResultMemberError;
        }
    }
}
