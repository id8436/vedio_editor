package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class StorageBucket {
    protected final String bucket;
    protected final long users;

    public StorageBucket(String str, long j) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'bucket' is null");
        }
        this.bucket = str;
        this.users = j;
    }

    public String getBucket() {
        return this.bucket;
    }

    public long getUsers() {
        return this.users;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.bucket, Long.valueOf(this.users)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            StorageBucket storageBucket = (StorageBucket) obj;
            return (this.bucket == storageBucket.bucket || this.bucket.equals(storageBucket.bucket)) && this.users == storageBucket.users;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<StorageBucket> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(StorageBucket storageBucket, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("bucket");
            StoneSerializers.string().serialize(storageBucket.bucket, gVar);
            gVar.a("users");
            StoneSerializers.uInt64().serialize(Long.valueOf(storageBucket.users), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public StorageBucket deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            String strDeserialize;
            Long l = null;
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
                    if ("bucket".equals(strD)) {
                        Long l2 = l;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("users".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    l = lDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"bucket\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"users\" missing.");
                }
                StorageBucket storageBucket = new StorageBucket(str, l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return storageBucket;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
