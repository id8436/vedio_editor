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
public class ListMemberDevicesResult {
    protected final List<ActiveWebSession> activeWebSessions;
    protected final List<DesktopClientSession> desktopClientSessions;
    protected final List<MobileClientSession> mobileClientSessions;

    public ListMemberDevicesResult(List<ActiveWebSession> list, List<DesktopClientSession> list2, List<MobileClientSession> list3) {
        if (list != null) {
            Iterator<ActiveWebSession> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'activeWebSessions' is null");
                }
            }
        }
        this.activeWebSessions = list;
        if (list2 != null) {
            Iterator<DesktopClientSession> it2 = list2.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'desktopClientSessions' is null");
                }
            }
        }
        this.desktopClientSessions = list2;
        if (list3 != null) {
            Iterator<MobileClientSession> it3 = list3.iterator();
            while (it3.hasNext()) {
                if (it3.next() == null) {
                    throw new IllegalArgumentException("An item in list 'mobileClientSessions' is null");
                }
            }
        }
        this.mobileClientSessions = list3;
    }

    public ListMemberDevicesResult() {
        this(null, null, null);
    }

    public List<ActiveWebSession> getActiveWebSessions() {
        return this.activeWebSessions;
    }

    public List<DesktopClientSession> getDesktopClientSessions() {
        return this.desktopClientSessions;
    }

    public List<MobileClientSession> getMobileClientSessions() {
        return this.mobileClientSessions;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected List<ActiveWebSession> activeWebSessions = null;
        protected List<DesktopClientSession> desktopClientSessions = null;
        protected List<MobileClientSession> mobileClientSessions = null;

        protected Builder() {
        }

        public Builder withActiveWebSessions(List<ActiveWebSession> list) {
            if (list != null) {
                Iterator<ActiveWebSession> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'activeWebSessions' is null");
                    }
                }
            }
            this.activeWebSessions = list;
            return this;
        }

        public Builder withDesktopClientSessions(List<DesktopClientSession> list) {
            if (list != null) {
                Iterator<DesktopClientSession> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'desktopClientSessions' is null");
                    }
                }
            }
            this.desktopClientSessions = list;
            return this;
        }

        public Builder withMobileClientSessions(List<MobileClientSession> list) {
            if (list != null) {
                Iterator<MobileClientSession> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'mobileClientSessions' is null");
                    }
                }
            }
            this.mobileClientSessions = list;
            return this;
        }

        public ListMemberDevicesResult build() {
            return new ListMemberDevicesResult(this.activeWebSessions, this.desktopClientSessions, this.mobileClientSessions);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.activeWebSessions, this.desktopClientSessions, this.mobileClientSessions});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListMemberDevicesResult listMemberDevicesResult = (ListMemberDevicesResult) obj;
            if ((this.activeWebSessions == listMemberDevicesResult.activeWebSessions || (this.activeWebSessions != null && this.activeWebSessions.equals(listMemberDevicesResult.activeWebSessions))) && (this.desktopClientSessions == listMemberDevicesResult.desktopClientSessions || (this.desktopClientSessions != null && this.desktopClientSessions.equals(listMemberDevicesResult.desktopClientSessions)))) {
                if (this.mobileClientSessions == listMemberDevicesResult.mobileClientSessions) {
                    return true;
                }
                if (this.mobileClientSessions != null && this.mobileClientSessions.equals(listMemberDevicesResult.mobileClientSessions)) {
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

    class Serializer extends StructSerializer<ListMemberDevicesResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListMemberDevicesResult listMemberDevicesResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (listMemberDevicesResult.activeWebSessions != null) {
                gVar.a("active_web_sessions");
                StoneSerializers.nullable(StoneSerializers.list(ActiveWebSession.Serializer.INSTANCE)).serialize(listMemberDevicesResult.activeWebSessions, gVar);
            }
            if (listMemberDevicesResult.desktopClientSessions != null) {
                gVar.a("desktop_client_sessions");
                StoneSerializers.nullable(StoneSerializers.list(DesktopClientSession.Serializer.INSTANCE)).serialize(listMemberDevicesResult.desktopClientSessions, gVar);
            }
            if (listMemberDevicesResult.mobileClientSessions != null) {
                gVar.a("mobile_client_sessions");
                StoneSerializers.nullable(StoneSerializers.list(MobileClientSession.Serializer.INSTANCE)).serialize(listMemberDevicesResult.mobileClientSessions, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListMemberDevicesResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            List list2;
            List list3;
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
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("active_web_sessions".equals(strD)) {
                        List list7 = list4;
                        list2 = list5;
                        list3 = (List) StoneSerializers.nullable(StoneSerializers.list(ActiveWebSession.Serializer.INSTANCE)).deserialize(kVar);
                        list = list7;
                    } else if ("desktop_client_sessions".equals(strD)) {
                        list3 = list6;
                        list = list4;
                        list2 = (List) StoneSerializers.nullable(StoneSerializers.list(DesktopClientSession.Serializer.INSTANCE)).deserialize(kVar);
                    } else if ("mobile_client_sessions".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(MobileClientSession.Serializer.INSTANCE)).deserialize(kVar);
                        list2 = list5;
                        list3 = list6;
                    } else {
                        skipValue(kVar);
                        list = list4;
                        list2 = list5;
                        list3 = list6;
                    }
                    list6 = list3;
                    list5 = list2;
                    list4 = list;
                }
                ListMemberDevicesResult listMemberDevicesResult = new ListMemberDevicesResult(list6, list5, list4);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listMemberDevicesResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
