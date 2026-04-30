package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.ListFileMembersCountResult;
import com.dropbox.core.v2.sharing.SharingFileAccessError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ListFileMembersIndividualResult {
    public static final ListFileMembersIndividualResult OTHER = new ListFileMembersIndividualResult().withTag(Tag.OTHER);
    private Tag _tag;
    private SharingFileAccessError accessErrorValue;
    private ListFileMembersCountResult resultValue;

    public enum Tag {
        RESULT,
        ACCESS_ERROR,
        OTHER
    }

    private ListFileMembersIndividualResult() {
    }

    private ListFileMembersIndividualResult withTag(Tag tag) {
        ListFileMembersIndividualResult listFileMembersIndividualResult = new ListFileMembersIndividualResult();
        listFileMembersIndividualResult._tag = tag;
        return listFileMembersIndividualResult;
    }

    private ListFileMembersIndividualResult withTagAndResult(Tag tag, ListFileMembersCountResult listFileMembersCountResult) {
        ListFileMembersIndividualResult listFileMembersIndividualResult = new ListFileMembersIndividualResult();
        listFileMembersIndividualResult._tag = tag;
        listFileMembersIndividualResult.resultValue = listFileMembersCountResult;
        return listFileMembersIndividualResult;
    }

    private ListFileMembersIndividualResult withTagAndAccessError(Tag tag, SharingFileAccessError sharingFileAccessError) {
        ListFileMembersIndividualResult listFileMembersIndividualResult = new ListFileMembersIndividualResult();
        listFileMembersIndividualResult._tag = tag;
        listFileMembersIndividualResult.accessErrorValue = sharingFileAccessError;
        return listFileMembersIndividualResult;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isResult() {
        return this._tag == Tag.RESULT;
    }

    public static ListFileMembersIndividualResult result(ListFileMembersCountResult listFileMembersCountResult) {
        if (listFileMembersCountResult == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ListFileMembersIndividualResult().withTagAndResult(Tag.RESULT, listFileMembersCountResult);
    }

    public ListFileMembersCountResult getResultValue() {
        if (this._tag != Tag.RESULT) {
            throw new IllegalStateException("Invalid tag: required Tag.RESULT, but was Tag." + this._tag.name());
        }
        return this.resultValue;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static ListFileMembersIndividualResult accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ListFileMembersIndividualResult().withTagAndAccessError(Tag.ACCESS_ERROR, sharingFileAccessError);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.resultValue, this.accessErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListFileMembersIndividualResult)) {
            return false;
        }
        ListFileMembersIndividualResult listFileMembersIndividualResult = (ListFileMembersIndividualResult) obj;
        if (this._tag != listFileMembersIndividualResult._tag) {
            return false;
        }
        switch (this._tag) {
            case RESULT:
                return this.resultValue == listFileMembersIndividualResult.resultValue || this.resultValue.equals(listFileMembersIndividualResult.resultValue);
            case ACCESS_ERROR:
                return this.accessErrorValue == listFileMembersIndividualResult.accessErrorValue || this.accessErrorValue.equals(listFileMembersIndividualResult.accessErrorValue);
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

    class Serializer extends UnionSerializer<ListFileMembersIndividualResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListFileMembersIndividualResult listFileMembersIndividualResult, g gVar) throws IOException {
            switch (listFileMembersIndividualResult.tag()) {
                case RESULT:
                    gVar.e();
                    writeTag("result", gVar);
                    ListFileMembersCountResult.Serializer.INSTANCE.serialize(listFileMembersIndividualResult.resultValue, gVar, true);
                    gVar.f();
                    break;
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharingFileAccessError.Serializer.INSTANCE.serialize(listFileMembersIndividualResult.accessErrorValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListFileMembersIndividualResult deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListFileMembersIndividualResult listFileMembersIndividualResultAccessError;
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
            if ("result".equals(tag)) {
                listFileMembersIndividualResultAccessError = ListFileMembersIndividualResult.result(ListFileMembersCountResult.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("access_error".equals(tag)) {
                expectField("access_error", kVar);
                listFileMembersIndividualResultAccessError = ListFileMembersIndividualResult.accessError(SharingFileAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                listFileMembersIndividualResultAccessError = ListFileMembersIndividualResult.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listFileMembersIndividualResultAccessError;
        }
    }
}
