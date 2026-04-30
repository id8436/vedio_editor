package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class NamespaceRelativePathLogInfo {
    protected final String nsId;
    protected final String relativePath;

    public NamespaceRelativePathLogInfo(String str, String str2) {
        if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'nsId' does not match pattern");
        }
        this.nsId = str;
        if (str2 != null && !Pattern.matches("/(.|[\\r\\n])*", str2)) {
            throw new IllegalArgumentException("String 'relativePath' does not match pattern");
        }
        this.relativePath = str2;
    }

    public NamespaceRelativePathLogInfo() {
        this(null, null);
    }

    public String getNsId() {
        return this.nsId;
    }

    public String getRelativePath() {
        return this.relativePath;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected String nsId = null;
        protected String relativePath = null;

        protected Builder() {
        }

        public Builder withNsId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'nsId' does not match pattern");
            }
            this.nsId = str;
            return this;
        }

        public Builder withRelativePath(String str) {
            if (str != null && !Pattern.matches("/(.|[\\r\\n])*", str)) {
                throw new IllegalArgumentException("String 'relativePath' does not match pattern");
            }
            this.relativePath = str;
            return this;
        }

        public NamespaceRelativePathLogInfo build() {
            return new NamespaceRelativePathLogInfo(this.nsId, this.relativePath);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.nsId, this.relativePath});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            NamespaceRelativePathLogInfo namespaceRelativePathLogInfo = (NamespaceRelativePathLogInfo) obj;
            if (this.nsId == namespaceRelativePathLogInfo.nsId || (this.nsId != null && this.nsId.equals(namespaceRelativePathLogInfo.nsId))) {
                if (this.relativePath == namespaceRelativePathLogInfo.relativePath) {
                    return true;
                }
                if (this.relativePath != null && this.relativePath.equals(namespaceRelativePathLogInfo.relativePath)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<NamespaceRelativePathLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(NamespaceRelativePathLogInfo namespaceRelativePathLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (namespaceRelativePathLogInfo.nsId != null) {
                gVar.a("ns_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(namespaceRelativePathLogInfo.nsId, gVar);
            }
            if (namespaceRelativePathLogInfo.relativePath != null) {
                gVar.a("relative_path");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(namespaceRelativePathLogInfo.relativePath, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public NamespaceRelativePathLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            String str3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("ns_id".equals(strD)) {
                        String str5 = str3;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str = str5;
                    } else if ("relative_path".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str4;
                    } else {
                        skipValue(kVar);
                        str = str3;
                        str2 = str4;
                    }
                    str4 = str2;
                    str3 = str;
                }
                NamespaceRelativePathLogInfo namespaceRelativePathLogInfo = new NamespaceRelativePathLogInfo(str4, str3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return namespaceRelativePathLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
