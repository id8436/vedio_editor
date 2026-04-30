package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.NonTeamMemberLogInfo;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ShmodelFbShareDetails {
    protected final List<NonTeamMemberLogInfo> sharingNonMemberRecipients;

    public ShmodelFbShareDetails(List<NonTeamMemberLogInfo> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'sharingNonMemberRecipients' is null");
        }
        Iterator<NonTeamMemberLogInfo> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharingNonMemberRecipients' is null");
            }
        }
        this.sharingNonMemberRecipients = list;
    }

    public List<NonTeamMemberLogInfo> getSharingNonMemberRecipients() {
        return this.sharingNonMemberRecipients;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharingNonMemberRecipients});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ShmodelFbShareDetails shmodelFbShareDetails = (ShmodelFbShareDetails) obj;
        return this.sharingNonMemberRecipients == shmodelFbShareDetails.sharingNonMemberRecipients || this.sharingNonMemberRecipients.equals(shmodelFbShareDetails.sharingNonMemberRecipients);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ShmodelFbShareDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ShmodelFbShareDetails shmodelFbShareDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("sharing_non_member_recipients");
            StoneSerializers.list(NonTeamMemberLogInfo.Serializer.INSTANCE).serialize(shmodelFbShareDetails.sharingNonMemberRecipients, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ShmodelFbShareDetails deserialize(k kVar, boolean z) throws IOException {
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
                    if ("sharing_non_member_recipients".equals(strD)) {
                        list = (List) StoneSerializers.list(NonTeamMemberLogInfo.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"sharing_non_member_recipients\" missing.");
                }
                ShmodelFbShareDetails shmodelFbShareDetails = new ShmodelFbShareDetails(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return shmodelFbShareDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
