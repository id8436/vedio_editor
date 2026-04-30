package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.GetFileMetadataIndividualResult;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class GetFileMetadataBatchResult {
    protected final String file;
    protected final GetFileMetadataIndividualResult result;

    public GetFileMetadataBatchResult(String str, GetFileMetadataIndividualResult getFileMetadataIndividualResult) {
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
        if (getFileMetadataIndividualResult == null) {
            throw new IllegalArgumentException("Required value for 'result' is null");
        }
        this.result = getFileMetadataIndividualResult;
    }

    public String getFile() {
        return this.file;
    }

    public GetFileMetadataIndividualResult getResult() {
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
            GetFileMetadataBatchResult getFileMetadataBatchResult = (GetFileMetadataBatchResult) obj;
            return (this.file == getFileMetadataBatchResult.file || this.file.equals(getFileMetadataBatchResult.file)) && (this.result == getFileMetadataBatchResult.result || this.result.equals(getFileMetadataBatchResult.result));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GetFileMetadataBatchResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetFileMetadataBatchResult getFileMetadataBatchResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("file");
            StoneSerializers.string().serialize(getFileMetadataBatchResult.file, gVar);
            gVar.a("result");
            GetFileMetadataIndividualResult.Serializer.INSTANCE.serialize(getFileMetadataBatchResult.result, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetFileMetadataBatchResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            GetFileMetadataIndividualResult getFileMetadataIndividualResultDeserialize;
            String strDeserialize;
            GetFileMetadataIndividualResult getFileMetadataIndividualResult = null;
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
                        GetFileMetadataIndividualResult getFileMetadataIndividualResult2 = getFileMetadataIndividualResult;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        getFileMetadataIndividualResultDeserialize = getFileMetadataIndividualResult2;
                    } else if ("result".equals(strD)) {
                        getFileMetadataIndividualResultDeserialize = GetFileMetadataIndividualResult.Serializer.INSTANCE.deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        getFileMetadataIndividualResultDeserialize = getFileMetadataIndividualResult;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    getFileMetadataIndividualResult = getFileMetadataIndividualResultDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"file\" missing.");
                }
                if (getFileMetadataIndividualResult == null) {
                    throw new j(kVar, "Required field \"result\" missing.");
                }
                GetFileMetadataBatchResult getFileMetadataBatchResult = new GetFileMetadataBatchResult(str, getFileMetadataIndividualResult);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getFileMetadataBatchResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
