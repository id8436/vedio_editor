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
class ListMemberDevicesArg {
    protected final boolean includeDesktopClients;
    protected final boolean includeMobileClients;
    protected final boolean includeWebSessions;
    protected final String teamMemberId;

    public ListMemberDevicesArg(String str, boolean z, boolean z2, boolean z3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
        }
        this.teamMemberId = str;
        this.includeWebSessions = z;
        this.includeDesktopClients = z2;
        this.includeMobileClients = z3;
    }

    public ListMemberDevicesArg(String str) {
        this(str, true, true, true);
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public boolean getIncludeWebSessions() {
        return this.includeWebSessions;
    }

    public boolean getIncludeDesktopClients() {
        return this.includeDesktopClients;
    }

    public boolean getIncludeMobileClients() {
        return this.includeMobileClients;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected boolean includeDesktopClients;
        protected boolean includeMobileClients;
        protected boolean includeWebSessions;
        protected final String teamMemberId;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
            }
            this.teamMemberId = str;
            this.includeWebSessions = true;
            this.includeDesktopClients = true;
            this.includeMobileClients = true;
        }

        public Builder withIncludeWebSessions(Boolean bool) {
            if (bool != null) {
                this.includeWebSessions = bool.booleanValue();
            } else {
                this.includeWebSessions = true;
            }
            return this;
        }

        public Builder withIncludeDesktopClients(Boolean bool) {
            if (bool != null) {
                this.includeDesktopClients = bool.booleanValue();
            } else {
                this.includeDesktopClients = true;
            }
            return this;
        }

        public Builder withIncludeMobileClients(Boolean bool) {
            if (bool != null) {
                this.includeMobileClients = bool.booleanValue();
            } else {
                this.includeMobileClients = true;
            }
            return this;
        }

        public ListMemberDevicesArg build() {
            return new ListMemberDevicesArg(this.teamMemberId, this.includeWebSessions, this.includeDesktopClients, this.includeMobileClients);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamMemberId, Boolean.valueOf(this.includeWebSessions), Boolean.valueOf(this.includeDesktopClients), Boolean.valueOf(this.includeMobileClients)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListMemberDevicesArg listMemberDevicesArg = (ListMemberDevicesArg) obj;
            return (this.teamMemberId == listMemberDevicesArg.teamMemberId || this.teamMemberId.equals(listMemberDevicesArg.teamMemberId)) && this.includeWebSessions == listMemberDevicesArg.includeWebSessions && this.includeDesktopClients == listMemberDevicesArg.includeDesktopClients && this.includeMobileClients == listMemberDevicesArg.includeMobileClients;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListMemberDevicesArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListMemberDevicesArg listMemberDevicesArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_member_id");
            StoneSerializers.string().serialize(listMemberDevicesArg.teamMemberId, gVar);
            gVar.a("include_web_sessions");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listMemberDevicesArg.includeWebSessions), gVar);
            gVar.a("include_desktop_clients");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listMemberDevicesArg.includeDesktopClients), gVar);
            gVar.a("include_mobile_clients");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listMemberDevicesArg.includeMobileClients), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListMemberDevicesArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            Boolean boolDeserialize2;
            Boolean boolDeserialize3;
            String strDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = true;
                Boolean bool2 = true;
                Boolean bool3 = true;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("team_member_id".equals(strD)) {
                        Boolean bool4 = bool3;
                        boolDeserialize2 = bool2;
                        boolDeserialize3 = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool4;
                    } else if ("include_web_sessions".equals(strD)) {
                        strDeserialize = str;
                        Boolean bool5 = bool2;
                        boolDeserialize3 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool3;
                        boolDeserialize2 = bool5;
                    } else if ("include_desktop_clients".equals(strD)) {
                        boolDeserialize3 = bool;
                        strDeserialize = str;
                        Boolean bool6 = bool3;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool6;
                    } else if ("include_mobile_clients".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize2 = bool2;
                        boolDeserialize3 = bool;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool3;
                        boolDeserialize2 = bool2;
                        boolDeserialize3 = bool;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    bool = boolDeserialize3;
                    bool2 = boolDeserialize2;
                    bool3 = boolDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"team_member_id\" missing.");
                }
                ListMemberDevicesArg listMemberDevicesArg = new ListMemberDevicesArg(str, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listMemberDevicesArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
