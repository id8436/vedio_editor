package com.dropbox.core.v2.sharing;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.FileMemberActionError;
import com.dropbox.core.v2.sharing.MemberAccessLevelResult;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class FileMemberRemoveActionResult {
    public static final FileMemberRemoveActionResult OTHER = new FileMemberRemoveActionResult().withTag(Tag.OTHER);
    private Tag _tag;
    private FileMemberActionError memberErrorValue;
    private MemberAccessLevelResult successValue;

    public enum Tag {
        SUCCESS,
        MEMBER_ERROR,
        OTHER
    }

    private FileMemberRemoveActionResult() {
    }

    private FileMemberRemoveActionResult withTag(Tag tag) {
        FileMemberRemoveActionResult fileMemberRemoveActionResult = new FileMemberRemoveActionResult();
        fileMemberRemoveActionResult._tag = tag;
        return fileMemberRemoveActionResult;
    }

    private FileMemberRemoveActionResult withTagAndSuccess(Tag tag, MemberAccessLevelResult memberAccessLevelResult) {
        FileMemberRemoveActionResult fileMemberRemoveActionResult = new FileMemberRemoveActionResult();
        fileMemberRemoveActionResult._tag = tag;
        fileMemberRemoveActionResult.successValue = memberAccessLevelResult;
        return fileMemberRemoveActionResult;
    }

    private FileMemberRemoveActionResult withTagAndMemberError(Tag tag, FileMemberActionError fileMemberActionError) {
        FileMemberRemoveActionResult fileMemberRemoveActionResult = new FileMemberRemoveActionResult();
        fileMemberRemoveActionResult._tag = tag;
        fileMemberRemoveActionResult.memberErrorValue = fileMemberActionError;
        return fileMemberRemoveActionResult;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isSuccess() {
        return this._tag == Tag.SUCCESS;
    }

    public static FileMemberRemoveActionResult success(MemberAccessLevelResult memberAccessLevelResult) {
        if (memberAccessLevelResult == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new FileMemberRemoveActionResult().withTagAndSuccess(Tag.SUCCESS, memberAccessLevelResult);
    }

    public MemberAccessLevelResult getSuccessValue() {
        if (this._tag != Tag.SUCCESS) {
            throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this._tag.name());
        }
        return this.successValue;
    }

    public boolean isMemberError() {
        return this._tag == Tag.MEMBER_ERROR;
    }

    public static FileMemberRemoveActionResult memberError(FileMemberActionError fileMemberActionError) {
        if (fileMemberActionError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new FileMemberRemoveActionResult().withTagAndMemberError(Tag.MEMBER_ERROR, fileMemberActionError);
    }

    public FileMemberActionError getMemberErrorValue() {
        if (this._tag != Tag.MEMBER_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_ERROR, but was Tag." + this._tag.name());
        }
        return this.memberErrorValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.successValue, this.memberErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof FileMemberRemoveActionResult)) {
            return false;
        }
        FileMemberRemoveActionResult fileMemberRemoveActionResult = (FileMemberRemoveActionResult) obj;
        if (this._tag != fileMemberRemoveActionResult._tag) {
            return false;
        }
        switch (this._tag) {
            case SUCCESS:
                return this.successValue == fileMemberRemoveActionResult.successValue || this.successValue.equals(fileMemberRemoveActionResult.successValue);
            case MEMBER_ERROR:
                return this.memberErrorValue == fileMemberRemoveActionResult.memberErrorValue || this.memberErrorValue.equals(fileMemberRemoveActionResult.memberErrorValue);
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

    class Serializer extends UnionSerializer<FileMemberRemoveActionResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(FileMemberRemoveActionResult fileMemberRemoveActionResult, g gVar) throws IOException {
            switch (fileMemberRemoveActionResult.tag()) {
                case SUCCESS:
                    gVar.e();
                    writeTag(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS, gVar);
                    MemberAccessLevelResult.Serializer.INSTANCE.serialize(fileMemberRemoveActionResult.successValue, gVar, true);
                    gVar.f();
                    break;
                case MEMBER_ERROR:
                    gVar.e();
                    writeTag("member_error", gVar);
                    gVar.a("member_error");
                    FileMemberActionError.Serializer.INSTANCE.serialize(fileMemberRemoveActionResult.memberErrorValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public FileMemberRemoveActionResult deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            FileMemberRemoveActionResult fileMemberRemoveActionResultMemberError;
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
                fileMemberRemoveActionResultMemberError = FileMemberRemoveActionResult.success(MemberAccessLevelResult.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("member_error".equals(tag)) {
                expectField("member_error", kVar);
                fileMemberRemoveActionResultMemberError = FileMemberRemoveActionResult.memberError(FileMemberActionError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                fileMemberRemoveActionResultMemberError = FileMemberRemoveActionResult.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return fileMemberRemoveActionResultMemberError;
        }
    }
}
