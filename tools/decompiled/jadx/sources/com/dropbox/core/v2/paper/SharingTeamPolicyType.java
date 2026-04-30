package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharingTeamPolicyType {
    PEOPLE_WITH_LINK_CAN_EDIT,
    PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT,
    INVITE_ONLY;

    class Serializer extends UnionSerializer<SharingTeamPolicyType> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharingTeamPolicyType sharingTeamPolicyType, g gVar) throws IOException {
            switch (sharingTeamPolicyType) {
                case PEOPLE_WITH_LINK_CAN_EDIT:
                    gVar.b("people_with_link_can_edit");
                    return;
                case PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT:
                    gVar.b("people_with_link_can_view_and_comment");
                    return;
                case INVITE_ONLY:
                    gVar.b("invite_only");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + sharingTeamPolicyType);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharingTeamPolicyType deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharingTeamPolicyType sharingTeamPolicyType;
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
            if ("people_with_link_can_edit".equals(tag)) {
                sharingTeamPolicyType = SharingTeamPolicyType.PEOPLE_WITH_LINK_CAN_EDIT;
            } else if ("people_with_link_can_view_and_comment".equals(tag)) {
                sharingTeamPolicyType = SharingTeamPolicyType.PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT;
            } else if ("invite_only".equals(tag)) {
                sharingTeamPolicyType = SharingTeamPolicyType.INVITE_ONLY;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharingTeamPolicyType;
        }
    }
}
