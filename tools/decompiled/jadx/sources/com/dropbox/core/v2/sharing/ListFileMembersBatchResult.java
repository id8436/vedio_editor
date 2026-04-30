package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.ListFileMembersIndividualResult;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class ListFileMembersBatchResult {
    protected final String file;
    protected final ListFileMembersIndividualResult result;

    public ListFileMembersBatchResult(String str, ListFileMembersIndividualResult listFileMembersIndividualResult) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'file' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'file' is shorter than 1");
        }
        if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
            throw new IllegalArgumentException("String 'file' does not match pattern");
        }
        this.file = str;
        if (listFileMembersIndividualResult == null) {
            throw new IllegalArgumentException("Required value for 'result' is null");
        }
        this.result = listFileMembersIndividualResult;
    }

    public String getFile() {
        return this.file;
    }

    public ListFileMembersIndividualResult getResult() {
        return this.result;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.file, this.result});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListFileMembersBatchResult listFileMembersBatchResult = (ListFileMembersBatchResult) obj;
            return (this.file == listFileMembersBatchResult.file || this.file.equals(listFileMembersBatchResult.file)) && (this.result == listFileMembersBatchResult.result || this.result.equals(listFileMembersBatchResult.result));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListFileMembersBatchResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListFileMembersBatchResult listFileMembersBatchResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("file");
            StoneSerializers.string().serialize(listFileMembersBatchResult.file, gVar);
            gVar.a("result");
            ListFileMembersIndividualResult.Serializer.INSTANCE.serialize(listFileMembersBatchResult.result, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListFileMembersBatchResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            ListFileMembersIndividualResult listFileMembersIndividualResultDeserialize;
            String strDeserialize;
            ListFileMembersIndividualResult listFileMembersIndividualResult = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("file".equals(strD)) {
                        ListFileMembersIndividualResult listFileMembersIndividualResult2 = listFileMembersIndividualResult;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        listFileMembersIndividualResultDeserialize = listFileMembersIndividualResult2;
                    } else if ("result".equals(strD)) {
                        listFileMembersIndividualResultDeserialize = ListFileMembersIndividualResult.Serializer.INSTANCE.deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        listFileMembersIndividualResultDeserialize = listFileMembersIndividualResult;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    listFileMembersIndividualResult = listFileMembersIndividualResultDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"file\" missing.");
                }
                if (listFileMembersIndividualResult == null) {
                    throw new j(kVar, "Required field \"result\" missing.");
                }
                ListFileMembersBatchResult listFileMembersBatchResult = new ListFileMembersBatchResult(str, listFileMembersIndividualResult);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listFileMembersBatchResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
