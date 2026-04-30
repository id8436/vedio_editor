package com.dropbox.core.v2.team;

import c.a.a.a.a.b.a;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DevicesActive {

    /* JADX INFO: renamed from: android, reason: collision with root package name */
    protected final List<Long> f1542android;
    protected final List<Long> ios;
    protected final List<Long> linux;
    protected final List<Long> macos;
    protected final List<Long> other;
    protected final List<Long> total;
    protected final List<Long> windows;

    public DevicesActive(List<Long> list, List<Long> list2, List<Long> list3, List<Long> list4, List<Long> list5, List<Long> list6, List<Long> list7) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'windows' is null");
        }
        Iterator<Long> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'windows' is null");
            }
        }
        this.windows = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'macos' is null");
        }
        Iterator<Long> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'macos' is null");
            }
        }
        this.macos = list2;
        if (list3 == null) {
            throw new IllegalArgumentException("Required value for 'linux' is null");
        }
        Iterator<Long> it3 = list3.iterator();
        while (it3.hasNext()) {
            if (it3.next() == null) {
                throw new IllegalArgumentException("An item in list 'linux' is null");
            }
        }
        this.linux = list3;
        if (list4 == null) {
            throw new IllegalArgumentException("Required value for 'ios' is null");
        }
        Iterator<Long> it4 = list4.iterator();
        while (it4.hasNext()) {
            if (it4.next() == null) {
                throw new IllegalArgumentException("An item in list 'ios' is null");
            }
        }
        this.ios = list4;
        if (list5 == null) {
            throw new IllegalArgumentException("Required value for 'android' is null");
        }
        Iterator<Long> it5 = list5.iterator();
        while (it5.hasNext()) {
            if (it5.next() == null) {
                throw new IllegalArgumentException("An item in list 'android' is null");
            }
        }
        this.f1542android = list5;
        if (list6 == null) {
            throw new IllegalArgumentException("Required value for 'other' is null");
        }
        Iterator<Long> it6 = list6.iterator();
        while (it6.hasNext()) {
            if (it6.next() == null) {
                throw new IllegalArgumentException("An item in list 'other' is null");
            }
        }
        this.other = list6;
        if (list7 == null) {
            throw new IllegalArgumentException("Required value for 'total' is null");
        }
        Iterator<Long> it7 = list7.iterator();
        while (it7.hasNext()) {
            if (it7.next() == null) {
                throw new IllegalArgumentException("An item in list 'total' is null");
            }
        }
        this.total = list7;
    }

    public List<Long> getWindows() {
        return this.windows;
    }

    public List<Long> getMacos() {
        return this.macos;
    }

    public List<Long> getLinux() {
        return this.linux;
    }

    public List<Long> getIos() {
        return this.ios;
    }

    public List<Long> getAndroid() {
        return this.f1542android;
    }

    public List<Long> getOther() {
        return this.other;
    }

    public List<Long> getTotal() {
        return this.total;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.windows, this.macos, this.linux, this.ios, this.f1542android, this.other, this.total});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DevicesActive devicesActive = (DevicesActive) obj;
            return (this.windows == devicesActive.windows || this.windows.equals(devicesActive.windows)) && (this.macos == devicesActive.macos || this.macos.equals(devicesActive.macos)) && ((this.linux == devicesActive.linux || this.linux.equals(devicesActive.linux)) && ((this.ios == devicesActive.ios || this.ios.equals(devicesActive.ios)) && ((this.f1542android == devicesActive.f1542android || this.f1542android.equals(devicesActive.f1542android)) && ((this.other == devicesActive.other || this.other.equals(devicesActive.other)) && (this.total == devicesActive.total || this.total.equals(devicesActive.total))))));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<DevicesActive> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DevicesActive devicesActive, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("windows");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(devicesActive.windows, gVar);
            gVar.a("macos");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(devicesActive.macos, gVar);
            gVar.a("linux");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(devicesActive.linux, gVar);
            gVar.a("ios");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(devicesActive.ios, gVar);
            gVar.a(a.ANDROID_CLIENT_TYPE);
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(devicesActive.f1542android, gVar);
            gVar.a("other");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(devicesActive.other, gVar);
            gVar.a("total");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(devicesActive.total, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DevicesActive deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                List list2 = null;
                List list3 = null;
                List list4 = null;
                List list5 = null;
                List list6 = null;
                List list7 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("windows".equals(strD)) {
                        list7 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("macos".equals(strD)) {
                        list6 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("linux".equals(strD)) {
                        list5 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("ios".equals(strD)) {
                        list4 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if (a.ANDROID_CLIENT_TYPE.equals(strD)) {
                        list3 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("other".equals(strD)) {
                        list2 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else if ("total".equals(strD)) {
                        list = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list7 == null) {
                    throw new j(kVar, "Required field \"windows\" missing.");
                }
                if (list6 == null) {
                    throw new j(kVar, "Required field \"macos\" missing.");
                }
                if (list5 == null) {
                    throw new j(kVar, "Required field \"linux\" missing.");
                }
                if (list4 == null) {
                    throw new j(kVar, "Required field \"ios\" missing.");
                }
                if (list3 == null) {
                    throw new j(kVar, "Required field \"android\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"other\" missing.");
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"total\" missing.");
                }
                DevicesActive devicesActive = new DevicesActive(list7, list6, list5, list4, list3, list2, list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return devicesActive;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
