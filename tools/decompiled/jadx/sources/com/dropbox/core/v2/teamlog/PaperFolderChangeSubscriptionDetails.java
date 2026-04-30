package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PaperFolderChangeSubscriptionDetails {
    protected final String eventUuid;
    protected final String newSubscriptionLevel;
    protected final String previousSubscriptionLevel;

    public PaperFolderChangeSubscriptionDetails(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'newSubscriptionLevel' is null");
        }
        this.newSubscriptionLevel = str2;
        this.previousSubscriptionLevel = str3;
    }

    public PaperFolderChangeSubscriptionDetails(String str, String str2) {
        this(str, str2, null);
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public String getNewSubscriptionLevel() {
        return this.newSubscriptionLevel;
    }

    public String getPreviousSubscriptionLevel() {
        return this.previousSubscriptionLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.newSubscriptionLevel, this.previousSubscriptionLevel});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperFolderChangeSubscriptionDetails paperFolderChangeSubscriptionDetails = (PaperFolderChangeSubscriptionDetails) obj;
            if ((this.eventUuid == paperFolderChangeSubscriptionDetails.eventUuid || this.eventUuid.equals(paperFolderChangeSubscriptionDetails.eventUuid)) && (this.newSubscriptionLevel == paperFolderChangeSubscriptionDetails.newSubscriptionLevel || this.newSubscriptionLevel.equals(paperFolderChangeSubscriptionDetails.newSubscriptionLevel))) {
                if (this.previousSubscriptionLevel == paperFolderChangeSubscriptionDetails.previousSubscriptionLevel) {
                    return true;
                }
                if (this.previousSubscriptionLevel != null && this.previousSubscriptionLevel.equals(paperFolderChangeSubscriptionDetails.previousSubscriptionLevel)) {
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

    class Serializer extends StructSerializer<PaperFolderChangeSubscriptionDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperFolderChangeSubscriptionDetails paperFolderChangeSubscriptionDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("event_uuid");
            StoneSerializers.string().serialize(paperFolderChangeSubscriptionDetails.eventUuid, gVar);
            gVar.a("new_subscription_level");
            StoneSerializers.string().serialize(paperFolderChangeSubscriptionDetails.newSubscriptionLevel, gVar);
            if (paperFolderChangeSubscriptionDetails.previousSubscriptionLevel != null) {
                gVar.a("previous_subscription_level");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(paperFolderChangeSubscriptionDetails.previousSubscriptionLevel, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperFolderChangeSubscriptionDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String strDeserialize;
            String strDeserialize2;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str3 = null;
                String str4 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("event_uuid".equals(strD)) {
                        String str5 = str2;
                        strDeserialize = str3;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        str = str5;
                    } else if ("new_subscription_level".equals(strD)) {
                        strDeserialize2 = str4;
                        str = str2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("previous_subscription_level".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        strDeserialize = str3;
                        strDeserialize2 = str4;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        strDeserialize = str3;
                        strDeserialize2 = str4;
                    }
                    str4 = strDeserialize2;
                    str3 = strDeserialize;
                    str2 = str;
                }
                if (str4 == null) {
                    throw new j(kVar, "Required field \"event_uuid\" missing.");
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"new_subscription_level\" missing.");
                }
                PaperFolderChangeSubscriptionDetails paperFolderChangeSubscriptionDetails = new PaperFolderChangeSubscriptionDetails(str4, str3, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperFolderChangeSubscriptionDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
