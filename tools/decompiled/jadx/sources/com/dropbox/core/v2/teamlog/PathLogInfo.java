package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.NamespaceRelativePathLogInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class PathLogInfo {
    protected final String contextual;
    protected final NamespaceRelativePathLogInfo namespaceRelative;

    public PathLogInfo(NamespaceRelativePathLogInfo namespaceRelativePathLogInfo, String str) {
        if (str != null && !Pattern.matches("/(.|[\\r\\n])*", str)) {
            throw new IllegalArgumentException("String 'contextual' does not match pattern");
        }
        this.contextual = str;
        if (namespaceRelativePathLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'namespaceRelative' is null");
        }
        this.namespaceRelative = namespaceRelativePathLogInfo;
    }

    public PathLogInfo(NamespaceRelativePathLogInfo namespaceRelativePathLogInfo) {
        this(namespaceRelativePathLogInfo, null);
    }

    public NamespaceRelativePathLogInfo getNamespaceRelative() {
        return this.namespaceRelative;
    }

    public String getContextual() {
        return this.contextual;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.contextual, this.namespaceRelative});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PathLogInfo pathLogInfo = (PathLogInfo) obj;
            if (this.namespaceRelative == pathLogInfo.namespaceRelative || this.namespaceRelative.equals(pathLogInfo.namespaceRelative)) {
                if (this.contextual == pathLogInfo.contextual) {
                    return true;
                }
                if (this.contextual != null && this.contextual.equals(pathLogInfo.contextual)) {
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

    class Serializer extends StructSerializer<PathLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PathLogInfo pathLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("namespace_relative");
            NamespaceRelativePathLogInfo.Serializer.INSTANCE.serialize(pathLogInfo.namespaceRelative, gVar);
            if (pathLogInfo.contextual != null) {
                gVar.a("contextual");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(pathLogInfo.contextual, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PathLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            NamespaceRelativePathLogInfo namespaceRelativePathLogInfoDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                NamespaceRelativePathLogInfo namespaceRelativePathLogInfo = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("namespace_relative".equals(strD)) {
                        String str3 = str2;
                        namespaceRelativePathLogInfoDeserialize = NamespaceRelativePathLogInfo.Serializer.INSTANCE.deserialize(kVar);
                        str = str3;
                    } else if ("contextual".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        namespaceRelativePathLogInfoDeserialize = namespaceRelativePathLogInfo;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        namespaceRelativePathLogInfoDeserialize = namespaceRelativePathLogInfo;
                    }
                    namespaceRelativePathLogInfo = namespaceRelativePathLogInfoDeserialize;
                    str2 = str;
                }
                if (namespaceRelativePathLogInfo == null) {
                    throw new j(kVar, "Required field \"namespace_relative\" missing.");
                }
                PathLogInfo pathLogInfo = new PathLogInfo(namespaceRelativePathLogInfo, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return pathLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
