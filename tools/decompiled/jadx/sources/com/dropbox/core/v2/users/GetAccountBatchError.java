package com.dropbox.core.v2.users;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class GetAccountBatchError {
    public static final GetAccountBatchError OTHER = new GetAccountBatchError().withTag(Tag.OTHER);
    private Tag _tag;
    private String noAccountValue;

    public enum Tag {
        NO_ACCOUNT,
        OTHER
    }

    private GetAccountBatchError() {
    }

    private GetAccountBatchError withTag(Tag tag) {
        GetAccountBatchError getAccountBatchError = new GetAccountBatchError();
        getAccountBatchError._tag = tag;
        return getAccountBatchError;
    }

    private GetAccountBatchError withTagAndNoAccount(Tag tag, String str) {
        GetAccountBatchError getAccountBatchError = new GetAccountBatchError();
        getAccountBatchError._tag = tag;
        getAccountBatchError.noAccountValue = str;
        return getAccountBatchError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isNoAccount() {
        return this._tag == Tag.NO_ACCOUNT;
    }

    public static GetAccountBatchError noAccount(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 40) {
            throw new IllegalArgumentException("String is shorter than 40");
        }
        if (str.length() > 40) {
            throw new IllegalArgumentException("String is longer than 40");
        }
        return new GetAccountBatchError().withTagAndNoAccount(Tag.NO_ACCOUNT, str);
    }

    public String getNoAccountValue() {
        if (this._tag != Tag.NO_ACCOUNT) {
            throw new IllegalStateException("Invalid tag: required Tag.NO_ACCOUNT, but was Tag." + this._tag.name());
        }
        return this.noAccountValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.noAccountValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetAccountBatchError)) {
            return false;
        }
        GetAccountBatchError getAccountBatchError = (GetAccountBatchError) obj;
        if (this._tag != getAccountBatchError._tag) {
            return false;
        }
        switch (this._tag) {
            case NO_ACCOUNT:
                return this.noAccountValue == getAccountBatchError.noAccountValue || this.noAccountValue.equals(getAccountBatchError.noAccountValue);
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

    class Serializer extends UnionSerializer<GetAccountBatchError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetAccountBatchError getAccountBatchError, g gVar) throws IOException {
            switch (getAccountBatchError.tag()) {
                case NO_ACCOUNT:
                    gVar.e();
                    writeTag("no_account", gVar);
                    gVar.a("no_account");
                    StoneSerializers.string().serialize(getAccountBatchError.noAccountValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetAccountBatchError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GetAccountBatchError getAccountBatchErrorNoAccount;
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
            if ("no_account".equals(tag)) {
                expectField("no_account", kVar);
                getAccountBatchErrorNoAccount = GetAccountBatchError.noAccount(StoneSerializers.string().deserialize(kVar));
            } else {
                getAccountBatchErrorNoAccount = GetAccountBatchError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return getAccountBatchErrorNoAccount;
        }
    }
}
