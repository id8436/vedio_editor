package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public final class LinkExpiry {
    private Tag _tag;
    private Date setExpiryValue;
    public static final LinkExpiry REMOVE_EXPIRY = new LinkExpiry().withTag(Tag.REMOVE_EXPIRY);
    public static final LinkExpiry OTHER = new LinkExpiry().withTag(Tag.OTHER);

    public enum Tag {
        REMOVE_EXPIRY,
        SET_EXPIRY,
        OTHER
    }

    private LinkExpiry() {
    }

    private LinkExpiry withTag(Tag tag) {
        LinkExpiry linkExpiry = new LinkExpiry();
        linkExpiry._tag = tag;
        return linkExpiry;
    }

    private LinkExpiry withTagAndSetExpiry(Tag tag, Date date) {
        LinkExpiry linkExpiry = new LinkExpiry();
        linkExpiry._tag = tag;
        linkExpiry.setExpiryValue = date;
        return linkExpiry;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isRemoveExpiry() {
        return this._tag == Tag.REMOVE_EXPIRY;
    }

    public boolean isSetExpiry() {
        return this._tag == Tag.SET_EXPIRY;
    }

    public static LinkExpiry setExpiry(Date date) {
        if (date == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new LinkExpiry().withTagAndSetExpiry(Tag.SET_EXPIRY, date);
    }

    public Date getSetExpiryValue() {
        if (this._tag != Tag.SET_EXPIRY) {
            throw new IllegalStateException("Invalid tag: required Tag.SET_EXPIRY, but was Tag." + this._tag.name());
        }
        return this.setExpiryValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.setExpiryValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof LinkExpiry)) {
            return false;
        }
        LinkExpiry linkExpiry = (LinkExpiry) obj;
        if (this._tag != linkExpiry._tag) {
            return false;
        }
        switch (this._tag) {
            case REMOVE_EXPIRY:
                return true;
            case SET_EXPIRY:
                return this.setExpiryValue == linkExpiry.setExpiryValue || this.setExpiryValue.equals(linkExpiry.setExpiryValue);
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

    class Serializer extends UnionSerializer<LinkExpiry> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LinkExpiry linkExpiry, g gVar) throws IOException {
            switch (linkExpiry.tag()) {
                case REMOVE_EXPIRY:
                    gVar.b("remove_expiry");
                    break;
                case SET_EXPIRY:
                    gVar.e();
                    writeTag("set_expiry", gVar);
                    gVar.a("set_expiry");
                    StoneSerializers.timestamp().serialize(linkExpiry.setExpiryValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public LinkExpiry deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            LinkExpiry expiry;
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
            if ("remove_expiry".equals(tag)) {
                expiry = LinkExpiry.REMOVE_EXPIRY;
            } else if ("set_expiry".equals(tag)) {
                expectField("set_expiry", kVar);
                expiry = LinkExpiry.setExpiry(StoneSerializers.timestamp().deserialize(kVar));
            } else {
                expiry = LinkExpiry.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return expiry;
        }
    }
}
