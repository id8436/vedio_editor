package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AudienceExceptionContentInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AudienceExceptions {
    protected final long count;
    protected final List<AudienceExceptionContentInfo> exceptions;

    public AudienceExceptions(long j, List<AudienceExceptionContentInfo> list) {
        this.count = j;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'exceptions' is null");
        }
        Iterator<AudienceExceptionContentInfo> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'exceptions' is null");
            }
        }
        this.exceptions = list;
    }

    public long getCount() {
        return this.count;
    }

    public List<AudienceExceptionContentInfo> getExceptions() {
        return this.exceptions;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.count), this.exceptions});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            AudienceExceptions audienceExceptions = (AudienceExceptions) obj;
            return this.count == audienceExceptions.count && (this.exceptions == audienceExceptions.exceptions || this.exceptions.equals(audienceExceptions.exceptions));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<AudienceExceptions> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AudienceExceptions audienceExceptions, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("count");
            StoneSerializers.uInt32().serialize(Long.valueOf(audienceExceptions.count), gVar);
            gVar.a("exceptions");
            StoneSerializers.list(AudienceExceptionContentInfo.Serializer.INSTANCE).serialize(audienceExceptions.exceptions, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AudienceExceptions deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            Long lDeserialize;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("count".equals(strD)) {
                        List list3 = list2;
                        lDeserialize = StoneSerializers.uInt32().deserialize(kVar);
                        list = list3;
                    } else if ("exceptions".equals(strD)) {
                        list = (List) StoneSerializers.list(AudienceExceptionContentInfo.Serializer.INSTANCE).deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        list = list2;
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                    list2 = list;
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"count\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"exceptions\" missing.");
                }
                AudienceExceptions audienceExceptions = new AudienceExceptions(l.longValue(), list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return audienceExceptions;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
