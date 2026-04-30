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
class ListMembersDevicesArg {
    protected final String cursor;
    protected final boolean includeDesktopClients;
    protected final boolean includeMobileClients;
    protected final boolean includeWebSessions;

    public ListMembersDevicesArg(String str, boolean z, boolean z2, boolean z3) {
        this.cursor = str;
        this.includeWebSessions = z;
        this.includeDesktopClients = z2;
        this.includeMobileClients = z3;
    }

    public ListMembersDevicesArg() {
        this(null, true, true, true);
    }

    public String getCursor() {
        return this.cursor;
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

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected String cursor = null;
        protected boolean includeWebSessions = true;
        protected boolean includeDesktopClients = true;
        protected boolean includeMobileClients = true;

        protected Builder() {
        }

        public Builder withCursor(String str) {
            this.cursor = str;
            return this;
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

        public ListMembersDevicesArg build() {
            return new ListMembersDevicesArg(this.cursor, this.includeWebSessions, this.includeDesktopClients, this.includeMobileClients);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.cursor, Boolean.valueOf(this.includeWebSessions), Boolean.valueOf(this.includeDesktopClients), Boolean.valueOf(this.includeMobileClients)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ListMembersDevicesArg listMembersDevicesArg = (ListMembersDevicesArg) obj;
            return (this.cursor == listMembersDevicesArg.cursor || (this.cursor != null && this.cursor.equals(listMembersDevicesArg.cursor))) && this.includeWebSessions == listMembersDevicesArg.includeWebSessions && this.includeDesktopClients == listMembersDevicesArg.includeDesktopClients && this.includeMobileClients == listMembersDevicesArg.includeMobileClients;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ListMembersDevicesArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListMembersDevicesArg listMembersDevicesArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (listMembersDevicesArg.cursor != null) {
                gVar.a("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(listMembersDevicesArg.cursor, gVar);
            }
            gVar.a("include_web_sessions");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listMembersDevicesArg.includeWebSessions), gVar);
            gVar.a("include_desktop_clients");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listMembersDevicesArg.includeDesktopClients), gVar);
            gVar.a("include_mobile_clients");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(listMembersDevicesArg.includeMobileClients), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListMembersDevicesArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            Boolean boolDeserialize2;
            Boolean boolDeserialize3;
            String str;
            String str2 = null;
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
                    if ("cursor".equals(strD)) {
                        Boolean bool4 = bool3;
                        boolDeserialize2 = bool2;
                        boolDeserialize3 = bool;
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool4;
                    } else if ("include_web_sessions".equals(strD)) {
                        str = str2;
                        Boolean bool5 = bool2;
                        boolDeserialize3 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool3;
                        boolDeserialize2 = bool5;
                    } else if ("include_desktop_clients".equals(strD)) {
                        boolDeserialize3 = bool;
                        str = str2;
                        Boolean bool6 = bool3;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool6;
                    } else if ("include_mobile_clients".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize2 = bool2;
                        boolDeserialize3 = bool;
                        str = str2;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool3;
                        boolDeserialize2 = bool2;
                        boolDeserialize3 = bool;
                        str = str2;
                    }
                    str2 = str;
                    bool = boolDeserialize3;
                    bool2 = boolDeserialize2;
                    bool3 = boolDeserialize;
                }
                ListMembersDevicesArg listMembersDevicesArg = new ListMembersDevicesArg(str2, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return listMembersDevicesArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
