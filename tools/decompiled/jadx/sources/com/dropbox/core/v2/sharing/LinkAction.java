package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum LinkAction {
    CHANGE_ACCESS_LEVEL,
    CHANGE_AUDIENCE,
    REMOVE_EXPIRY,
    REMOVE_PASSWORD,
    SET_EXPIRY,
    SET_PASSWORD,
    OTHER;

    class Serializer extends UnionSerializer<LinkAction> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LinkAction linkAction, g gVar) throws IOException {
            switch (linkAction) {
                case CHANGE_ACCESS_LEVEL:
                    gVar.b("change_access_level");
                    break;
                case CHANGE_AUDIENCE:
                    gVar.b("change_audience");
                    break;
                case REMOVE_EXPIRY:
                    gVar.b("remove_expiry");
                    break;
                case REMOVE_PASSWORD:
                    gVar.b("remove_password");
                    break;
                case SET_EXPIRY:
                    gVar.b("set_expiry");
                    break;
                case SET_PASSWORD:
                    gVar.b("set_password");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public LinkAction deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            LinkAction linkAction;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("change_access_level".equals(tag)) {
                linkAction = LinkAction.CHANGE_ACCESS_LEVEL;
            } else if ("change_audience".equals(tag)) {
                linkAction = LinkAction.CHANGE_AUDIENCE;
            } else if ("remove_expiry".equals(tag)) {
                linkAction = LinkAction.REMOVE_EXPIRY;
            } else if ("remove_password".equals(tag)) {
                linkAction = LinkAction.REMOVE_PASSWORD;
            } else if ("set_expiry".equals(tag)) {
                linkAction = LinkAction.SET_EXPIRY;
            } else if ("set_password".equals(tag)) {
                linkAction = LinkAction.SET_PASSWORD;
            } else {
                linkAction = LinkAction.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return linkAction;
        }
    }
}
