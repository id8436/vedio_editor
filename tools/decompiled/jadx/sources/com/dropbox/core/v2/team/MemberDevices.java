package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.ActiveWebSession;
import com.dropbox.core.v2.team.DesktopClientSession;
import com.dropbox.core.v2.team.MobileClientSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MemberDevices {
    protected final List<DesktopClientSession> desktopClients;
    protected final List<MobileClientSession> mobileClients;
    protected final String teamMemberId;
    protected final List<ActiveWebSession> webSessions;

    public MemberDevices(String str, List<ActiveWebSession> list, List<DesktopClientSession> list2, List<MobileClientSession> list3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
        }
        this.teamMemberId = str;
        if (list != null) {
            Iterator<ActiveWebSession> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'webSessions' is null");
                }
            }
        }
        this.webSessions = list;
        if (list2 != null) {
            Iterator<DesktopClientSession> it2 = list2.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'desktopClients' is null");
                }
            }
        }
        this.desktopClients = list2;
        if (list3 != null) {
            Iterator<MobileClientSession> it3 = list3.iterator();
            while (it3.hasNext()) {
                if (it3.next() == null) {
                    throw new IllegalArgumentException("An item in list 'mobileClients' is null");
                }
            }
        }
        this.mobileClients = list3;
    }

    public MemberDevices(String str) {
        this(str, null, null, null);
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public List<ActiveWebSession> getWebSessions() {
        return this.webSessions;
    }

    public List<DesktopClientSession> getDesktopClients() {
        return this.desktopClients;
    }

    public List<MobileClientSession> getMobileClients() {
        return this.mobileClients;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected List<DesktopClientSession> desktopClients;
        protected List<MobileClientSession> mobileClients;
        protected final String teamMemberId;
        protected List<ActiveWebSession> webSessions;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
            }
            this.teamMemberId = str;
            this.webSessions = null;
            this.desktopClients = null;
            this.mobileClients = null;
        }

        public Builder withWebSessions(List<ActiveWebSession> list) {
            if (list != null) {
                Iterator<ActiveWebSession> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'webSessions' is null");
                    }
                }
            }
            this.webSessions = list;
            return this;
        }

        public Builder withDesktopClients(List<DesktopClientSession> list) {
            if (list != null) {
                Iterator<DesktopClientSession> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'desktopClients' is null");
                    }
                }
            }
            this.desktopClients = list;
            return this;
        }

        public Builder withMobileClients(List<MobileClientSession> list) {
            if (list != null) {
                Iterator<MobileClientSession> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'mobileClients' is null");
                    }
                }
            }
            this.mobileClients = list;
            return this;
        }

        public MemberDevices build() {
            return new MemberDevices(this.teamMemberId, this.webSessions, this.desktopClients, this.mobileClients);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamMemberId, this.webSessions, this.desktopClients, this.mobileClients});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MemberDevices memberDevices = (MemberDevices) obj;
            if ((this.teamMemberId == memberDevices.teamMemberId || this.teamMemberId.equals(memberDevices.teamMemberId)) && ((this.webSessions == memberDevices.webSessions || (this.webSessions != null && this.webSessions.equals(memberDevices.webSessions))) && (this.desktopClients == memberDevices.desktopClients || (this.desktopClients != null && this.desktopClients.equals(memberDevices.desktopClients))))) {
                if (this.mobileClients == memberDevices.mobileClients) {
                    return true;
                }
                if (this.mobileClients != null && this.mobileClients.equals(memberDevices.mobileClients)) {
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

    class Serializer extends StructSerializer<MemberDevices> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberDevices memberDevices, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("team_member_id");
            StoneSerializers.string().serialize(memberDevices.teamMemberId, gVar);
            if (memberDevices.webSessions != null) {
                gVar.a("web_sessions");
                StoneSerializers.nullable(StoneSerializers.list(ActiveWebSession.Serializer.INSTANCE)).serialize(memberDevices.webSessions, gVar);
            }
            if (memberDevices.desktopClients != null) {
                gVar.a("desktop_clients");
                StoneSerializers.nullable(StoneSerializers.list(DesktopClientSession.Serializer.INSTANCE)).serialize(memberDevices.desktopClients, gVar);
            }
            if (memberDevices.mobileClients != null) {
                gVar.a("mobile_clients");
                StoneSerializers.nullable(StoneSerializers.list(MobileClientSession.Serializer.INSTANCE)).serialize(memberDevices.mobileClients, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberDevices deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            List list2;
            List list3;
            String strDeserialize;
            List list4 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                List list5 = null;
                List list6 = null;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("team_member_id".equals(strD)) {
                        List list7 = list4;
                        list2 = list5;
                        list3 = list6;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        list = list7;
                    } else if ("web_sessions".equals(strD)) {
                        strDeserialize = str;
                        List list8 = list5;
                        list3 = (List) StoneSerializers.nullable(StoneSerializers.list(ActiveWebSession.Serializer.INSTANCE)).deserialize(kVar);
                        list = list4;
                        list2 = list8;
                    } else if ("desktop_clients".equals(strD)) {
                        list3 = list6;
                        strDeserialize = str;
                        List list9 = list4;
                        list2 = (List) StoneSerializers.nullable(StoneSerializers.list(DesktopClientSession.Serializer.INSTANCE)).deserialize(kVar);
                        list = list9;
                    } else if ("mobile_clients".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(MobileClientSession.Serializer.INSTANCE)).deserialize(kVar);
                        list2 = list5;
                        list3 = list6;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        list = list4;
                        list2 = list5;
                        list3 = list6;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    list6 = list3;
                    list5 = list2;
                    list4 = list;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"team_member_id\" missing.");
                }
                MemberDevices memberDevices = new MemberDevices(str, list6, list5, list4);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberDevices;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
