package com.dropbox.core.v2.filerequests;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.filerequests.GracePeriod;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class FileRequestDeadline {
    protected final GracePeriod allowLateUploads;
    protected final Date deadline;

    public FileRequestDeadline(Date date, GracePeriod gracePeriod) {
        if (date == null) {
            throw new IllegalArgumentException("Required value for 'deadline' is null");
        }
        this.deadline = LangUtil.truncateMillis(date);
        this.allowLateUploads = gracePeriod;
    }

    public FileRequestDeadline(Date date) {
        this(date, null);
    }

    public Date getDeadline() {
        return this.deadline;
    }

    public GracePeriod getAllowLateUploads() {
        return this.allowLateUploads;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.deadline, this.allowLateUploads});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FileRequestDeadline fileRequestDeadline = (FileRequestDeadline) obj;
            if (this.deadline == fileRequestDeadline.deadline || this.deadline.equals(fileRequestDeadline.deadline)) {
                if (this.allowLateUploads == fileRequestDeadline.allowLateUploads) {
                    return true;
                }
                if (this.allowLateUploads != null && this.allowLateUploads.equals(fileRequestDeadline.allowLateUploads)) {
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

    class Serializer extends StructSerializer<FileRequestDeadline> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileRequestDeadline fileRequestDeadline, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("deadline");
            StoneSerializers.timestamp().serialize(fileRequestDeadline.deadline, gVar);
            if (fileRequestDeadline.allowLateUploads != null) {
                gVar.a("allow_late_uploads");
                StoneSerializers.nullable(GracePeriod.Serializer.INSTANCE).serialize(fileRequestDeadline.allowLateUploads, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileRequestDeadline deserialize(k kVar, boolean z) throws IOException {
            String tag;
            GracePeriod gracePeriod;
            Date dateDeserialize;
            GracePeriod gracePeriod2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Date date = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("deadline".equals(strD)) {
                        GracePeriod gracePeriod3 = gracePeriod2;
                        dateDeserialize = StoneSerializers.timestamp().deserialize(kVar);
                        gracePeriod = gracePeriod3;
                    } else if ("allow_late_uploads".equals(strD)) {
                        gracePeriod = (GracePeriod) StoneSerializers.nullable(GracePeriod.Serializer.INSTANCE).deserialize(kVar);
                        dateDeserialize = date;
                    } else {
                        skipValue(kVar);
                        gracePeriod = gracePeriod2;
                        dateDeserialize = date;
                    }
                    date = dateDeserialize;
                    gracePeriod2 = gracePeriod;
                }
                if (date == null) {
                    throw new j(kVar, "Required field \"deadline\" missing.");
                }
                FileRequestDeadline fileRequestDeadline = new FileRequestDeadline(date, gracePeriod2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileRequestDeadline;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
