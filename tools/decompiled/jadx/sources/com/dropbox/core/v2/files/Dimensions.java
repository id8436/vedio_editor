package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class Dimensions {
    protected final long height;
    protected final long width;

    public Dimensions(long j, long j2) {
        this.height = j;
        this.width = j2;
    }

    public long getHeight() {
        return this.height;
    }

    public long getWidth() {
        return this.width;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.height), Long.valueOf(this.width)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            Dimensions dimensions = (Dimensions) obj;
            return this.height == dimensions.height && this.width == dimensions.width;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<Dimensions> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(Dimensions dimensions, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("height");
            StoneSerializers.uInt64().serialize(Long.valueOf(dimensions.height), gVar);
            gVar.a("width");
            StoneSerializers.uInt64().serialize(Long.valueOf(dimensions.width), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public Dimensions deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            Long lDeserialize2;
            Long l = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("height".equals(strD)) {
                        Long l3 = l;
                        lDeserialize2 = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize = l3;
                    } else if ("width".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize2 = l2;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        lDeserialize2 = l2;
                    }
                    l2 = lDeserialize2;
                    l = lDeserialize;
                }
                if (l2 == null) {
                    throw new j(kVar, "Required field \"height\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"width\" missing.");
                }
                Dimensions dimensions = new Dimensions(l2.longValue(), l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return dimensions;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
