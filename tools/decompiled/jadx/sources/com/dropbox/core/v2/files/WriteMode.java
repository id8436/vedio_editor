package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class WriteMode {
    public static final WriteMode ADD = new WriteMode().withTag(Tag.ADD);
    public static final WriteMode OVERWRITE = new WriteMode().withTag(Tag.OVERWRITE);
    private Tag _tag;
    private String updateValue;

    public enum Tag {
        ADD,
        OVERWRITE,
        UPDATE
    }

    private WriteMode() {
    }

    private WriteMode withTag(Tag tag) {
        WriteMode writeMode = new WriteMode();
        writeMode._tag = tag;
        return writeMode;
    }

    private WriteMode withTagAndUpdate(Tag tag, String str) {
        WriteMode writeMode = new WriteMode();
        writeMode._tag = tag;
        writeMode.updateValue = str;
        return writeMode;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAdd() {
        return this._tag == Tag.ADD;
    }

    public boolean isOverwrite() {
        return this._tag == Tag.OVERWRITE;
    }

    public boolean isUpdate() {
        return this._tag == Tag.UPDATE;
    }

    public static WriteMode update(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 9) {
            throw new IllegalArgumentException("String is shorter than 9");
        }
        if (!Pattern.matches("[0-9a-f]+", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new WriteMode().withTagAndUpdate(Tag.UPDATE, str);
    }

    public String getUpdateValue() {
        if (this._tag != Tag.UPDATE) {
            throw new IllegalStateException("Invalid tag: required Tag.UPDATE, but was Tag." + this._tag.name());
        }
        return this.updateValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.updateValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof WriteMode)) {
            return false;
        }
        WriteMode writeMode = (WriteMode) obj;
        if (this._tag != writeMode._tag) {
            return false;
        }
        switch (this._tag) {
            case ADD:
                return true;
            case OVERWRITE:
                return true;
            case UPDATE:
                return this.updateValue == writeMode.updateValue || this.updateValue.equals(writeMode.updateValue);
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

    class Serializer extends UnionSerializer<WriteMode> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(WriteMode writeMode, g gVar) throws IOException {
            switch (writeMode.tag()) {
                case ADD:
                    gVar.b("add");
                    return;
                case OVERWRITE:
                    gVar.b("overwrite");
                    return;
                case UPDATE:
                    gVar.e();
                    writeTag("update", gVar);
                    gVar.a("update");
                    StoneSerializers.string().serialize(writeMode.updateValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + writeMode.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public WriteMode deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            WriteMode writeModeUpdate;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("add".equals(tag)) {
                writeModeUpdate = WriteMode.ADD;
            } else if ("overwrite".equals(tag)) {
                writeModeUpdate = WriteMode.OVERWRITE;
            } else if ("update".equals(tag)) {
                expectField("update", kVar);
                writeModeUpdate = WriteMode.update(StoneSerializers.string().deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return writeModeUpdate;
        }
    }
}
