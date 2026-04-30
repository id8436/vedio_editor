package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.fileproperties.PropertiesSearchMatch;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PropertiesSearchResult {
    protected final List<PropertiesSearchMatch> matches;

    public PropertiesSearchResult(List<PropertiesSearchMatch> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'matches' is null");
        }
        Iterator<PropertiesSearchMatch> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'matches' is null");
            }
        }
        this.matches = list;
    }

    public List<PropertiesSearchMatch> getMatches() {
        return this.matches;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.matches});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PropertiesSearchResult propertiesSearchResult = (PropertiesSearchResult) obj;
        return this.matches == propertiesSearchResult.matches || this.matches.equals(propertiesSearchResult.matches);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PropertiesSearchResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PropertiesSearchResult propertiesSearchResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("matches");
            StoneSerializers.list(PropertiesSearchMatch.Serializer.INSTANCE).serialize(propertiesSearchResult.matches, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PropertiesSearchResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("matches".equals(strD)) {
                        list = (List) StoneSerializers.list(PropertiesSearchMatch.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"matches\" missing.");
                }
                PropertiesSearchResult propertiesSearchResult = new PropertiesSearchResult(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return propertiesSearchResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
