package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.team.DeviceSessionArg;
import com.dropbox.core.v2.team.RevokeDesktopClientArg;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class RevokeDeviceSessionArg {
    private Tag _tag;
    private RevokeDesktopClientArg desktopClientValue;
    private DeviceSessionArg mobileClientValue;
    private DeviceSessionArg webSessionValue;

    public enum Tag {
        WEB_SESSION,
        DESKTOP_CLIENT,
        MOBILE_CLIENT
    }

    private RevokeDeviceSessionArg() {
    }

    private RevokeDeviceSessionArg withTag(Tag tag) {
        RevokeDeviceSessionArg revokeDeviceSessionArg = new RevokeDeviceSessionArg();
        revokeDeviceSessionArg._tag = tag;
        return revokeDeviceSessionArg;
    }

    private RevokeDeviceSessionArg withTagAndWebSession(Tag tag, DeviceSessionArg deviceSessionArg) {
        RevokeDeviceSessionArg revokeDeviceSessionArg = new RevokeDeviceSessionArg();
        revokeDeviceSessionArg._tag = tag;
        revokeDeviceSessionArg.webSessionValue = deviceSessionArg;
        return revokeDeviceSessionArg;
    }

    private RevokeDeviceSessionArg withTagAndDesktopClient(Tag tag, RevokeDesktopClientArg revokeDesktopClientArg) {
        RevokeDeviceSessionArg revokeDeviceSessionArg = new RevokeDeviceSessionArg();
        revokeDeviceSessionArg._tag = tag;
        revokeDeviceSessionArg.desktopClientValue = revokeDesktopClientArg;
        return revokeDeviceSessionArg;
    }

    private RevokeDeviceSessionArg withTagAndMobileClient(Tag tag, DeviceSessionArg deviceSessionArg) {
        RevokeDeviceSessionArg revokeDeviceSessionArg = new RevokeDeviceSessionArg();
        revokeDeviceSessionArg._tag = tag;
        revokeDeviceSessionArg.mobileClientValue = deviceSessionArg;
        return revokeDeviceSessionArg;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isWebSession() {
        return this._tag == Tag.WEB_SESSION;
    }

    public static RevokeDeviceSessionArg webSession(DeviceSessionArg deviceSessionArg) {
        if (deviceSessionArg == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RevokeDeviceSessionArg().withTagAndWebSession(Tag.WEB_SESSION, deviceSessionArg);
    }

    public DeviceSessionArg getWebSessionValue() {
        if (this._tag != Tag.WEB_SESSION) {
            throw new IllegalStateException("Invalid tag: required Tag.WEB_SESSION, but was Tag." + this._tag.name());
        }
        return this.webSessionValue;
    }

    public boolean isDesktopClient() {
        return this._tag == Tag.DESKTOP_CLIENT;
    }

    public static RevokeDeviceSessionArg desktopClient(RevokeDesktopClientArg revokeDesktopClientArg) {
        if (revokeDesktopClientArg == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RevokeDeviceSessionArg().withTagAndDesktopClient(Tag.DESKTOP_CLIENT, revokeDesktopClientArg);
    }

    public RevokeDesktopClientArg getDesktopClientValue() {
        if (this._tag != Tag.DESKTOP_CLIENT) {
            throw new IllegalStateException("Invalid tag: required Tag.DESKTOP_CLIENT, but was Tag." + this._tag.name());
        }
        return this.desktopClientValue;
    }

    public boolean isMobileClient() {
        return this._tag == Tag.MOBILE_CLIENT;
    }

    public static RevokeDeviceSessionArg mobileClient(DeviceSessionArg deviceSessionArg) {
        if (deviceSessionArg == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RevokeDeviceSessionArg().withTagAndMobileClient(Tag.MOBILE_CLIENT, deviceSessionArg);
    }

    public DeviceSessionArg getMobileClientValue() {
        if (this._tag != Tag.MOBILE_CLIENT) {
            throw new IllegalStateException("Invalid tag: required Tag.MOBILE_CLIENT, but was Tag." + this._tag.name());
        }
        return this.mobileClientValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.webSessionValue, this.desktopClientValue, this.mobileClientValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RevokeDeviceSessionArg)) {
            return false;
        }
        RevokeDeviceSessionArg revokeDeviceSessionArg = (RevokeDeviceSessionArg) obj;
        if (this._tag != revokeDeviceSessionArg._tag) {
            return false;
        }
        switch (this._tag) {
            case WEB_SESSION:
                return this.webSessionValue == revokeDeviceSessionArg.webSessionValue || this.webSessionValue.equals(revokeDeviceSessionArg.webSessionValue);
            case DESKTOP_CLIENT:
                return this.desktopClientValue == revokeDeviceSessionArg.desktopClientValue || this.desktopClientValue.equals(revokeDeviceSessionArg.desktopClientValue);
            case MOBILE_CLIENT:
                return this.mobileClientValue == revokeDeviceSessionArg.mobileClientValue || this.mobileClientValue.equals(revokeDeviceSessionArg.mobileClientValue);
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<RevokeDeviceSessionArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RevokeDeviceSessionArg revokeDeviceSessionArg, g gVar) throws IOException {
            switch (revokeDeviceSessionArg.tag()) {
                case WEB_SESSION:
                    gVar.e();
                    writeTag("web_session", gVar);
                    DeviceSessionArg.Serializer.INSTANCE.serialize(revokeDeviceSessionArg.webSessionValue, gVar, true);
                    gVar.f();
                    return;
                case DESKTOP_CLIENT:
                    gVar.e();
                    writeTag("desktop_client", gVar);
                    RevokeDesktopClientArg.Serializer.INSTANCE.serialize(revokeDeviceSessionArg.desktopClientValue, gVar, true);
                    gVar.f();
                    return;
                case MOBILE_CLIENT:
                    gVar.e();
                    writeTag("mobile_client", gVar);
                    DeviceSessionArg.Serializer.INSTANCE.serialize(revokeDeviceSessionArg.mobileClientValue, gVar, true);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + revokeDeviceSessionArg.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RevokeDeviceSessionArg deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RevokeDeviceSessionArg revokeDeviceSessionArgMobileClient;
            if (kVar.c() == o.VALUE_STRING) {
                tag = getStringValue(kVar);
                kVar.a();
                z = true;
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("web_session".equals(tag)) {
                revokeDeviceSessionArgMobileClient = RevokeDeviceSessionArg.webSession(DeviceSessionArg.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("desktop_client".equals(tag)) {
                revokeDeviceSessionArgMobileClient = RevokeDeviceSessionArg.desktopClient(RevokeDesktopClientArg.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("mobile_client".equals(tag)) {
                revokeDeviceSessionArgMobileClient = RevokeDeviceSessionArg.mobileClient(DeviceSessionArg.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return revokeDeviceSessionArgMobileClient;
        }
    }
}
