package com.google.gdata.data.finance;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(TransactionEntry.KIND)
public class TransactionEntry extends BaseEntry<TransactionEntry> {
    public static final String KIND = "http://schemas.google.com/finance/2007#transaction";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public TransactionEntry() {
        getCategories().add(CATEGORY);
    }

    public TransactionEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(TransactionEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(TransactionEntry.class, TransactionData.getDefaultDescription(true, false));
            new TransactionData().declareExtensions(extensionProfile);
        }
    }

    public TransactionData getTransactionData() {
        return (TransactionData) getExtension(TransactionData.class);
    }

    public void setTransactionData(TransactionData transactionData) {
        if (transactionData == null) {
            removeExtension(TransactionData.class);
        } else {
            setExtension(transactionData);
        }
    }

    public boolean hasTransactionData() {
        return hasExtension(TransactionData.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{TransactionEntry " + super.toString() + "}";
    }
}
