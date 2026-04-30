package com.dropbox.core.v2.filerequests;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.filerequests.FileRequestDeadline;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class UpdateFileRequestDeadline {
    public static final UpdateFileRequestDeadline NO_UPDATE = new UpdateFileRequestDeadline().withTag(Tag.NO_UPDATE);
    public static final UpdateFileRequestDeadline OTHER = new UpdateFileRequestDeadline().withTag(Tag.OTHER);
    private Tag _tag;
    private FileRequestDeadline updateValue;

    public enum Tag {
        NO_UPDATE,
        UPDATE,
        OTHER
    }

    private UpdateFileRequestDeadline() {
    }

    private UpdateFileRequestDeadline withTag(Tag tag) {
        UpdateFileRequestDeadline updateFileRequestDeadline = new UpdateFileRequestDeadline();
        updateFileRequestDeadline._tag = tag;
        return updateFileRequestDeadline;
    }

    private UpdateFileRequestDeadline withTagAndUpdate(Tag tag, FileRequestDeadline fileRequestDeadline) {
        UpdateFileRequestDeadline updateFileRequestDeadline = new UpdateFileRequestDeadline();
        updateFileRequestDeadline._tag = tag;
        updateFileRequestDeadline.updateValue = fileRequestDeadline;
        return updateFileRequestDeadline;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isNoUpdate() {
        return this._tag == Tag.NO_UPDATE;
    }

    public boolean isUpdate() {
        return this._tag == Tag.UPDATE;
    }

    public static UpdateFileRequestDeadline update(FileRequestDeadline fileRequestDeadline) {
        return new UpdateFileRequestDeadline().withTagAndUpdate(Tag.UPDATE, fileRequestDeadline);
    }

    public static UpdateFileRequestDeadline update() {
        return update(null);
    }

    public FileRequestDeadline getUpdateValue() {
        if (this._tag != Tag.UPDATE) {
            throw new IllegalStateException("Invalid tag: required Tag.UPDATE, but was Tag." + this._tag.name());
        }
        return this.updateValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.updateValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateFileRequestDeadline)) {
            return false;
        }
        UpdateFileRequestDeadline updateFileRequestDeadline = (UpdateFileRequestDeadline) obj;
        if (this._tag != updateFileRequestDeadline._tag) {
            return false;
        }
        switch (this._tag) {
            case NO_UPDATE:
                return true;
            case UPDATE:
                return this.updateValue == updateFileRequestDeadline.updateValue || (this.updateValue != null && this.updateValue.equals(updateFileRequestDeadline.updateValue));
            case OTHER:
                return true;
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

    class Serializer extends UnionSerializer<UpdateFileRequestDeadline> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UpdateFileRequestDeadline updateFileRequestDeadline, g gVar) throws IOException {
            switch (updateFileRequestDeadline.tag()) {
                case NO_UPDATE:
                    gVar.b("no_update");
                    break;
                case UPDATE:
                    gVar.e();
                    writeTag("update", gVar);
                    StoneSerializers.nullableStruct(FileRequestDeadline.Serializer.INSTANCE).serialize(updateFileRequestDeadline.updateValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UpdateFileRequestDeadline deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UpdateFileRequestDeadline updateFileRequestDeadlineUpdate;
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
            if ("no_update".equals(tag)) {
                updateFileRequestDeadlineUpdate = UpdateFileRequestDeadline.NO_UPDATE;
            } else if ("update".equals(tag)) {
                FileRequestDeadline fileRequestDeadline = null;
                if (kVar.c() != o.END_OBJECT) {
                    fileRequestDeadline = (FileRequestDeadline) StoneSerializers.nullableStruct(FileRequestDeadline.Serializer.INSTANCE).deserialize(kVar, true);
                }
                if (fileRequestDeadline == null) {
                    updateFileRequestDeadlineUpdate = UpdateFileRequestDeadline.update();
                } else {
                    updateFileRequestDeadlineUpdate = UpdateFileRequestDeadline.update(fileRequestDeadline);
                }
            } else {
                updateFileRequestDeadlineUpdate = UpdateFileRequestDeadline.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return updateFileRequestDeadlineUpdate;
        }
    }
}
