package com.google.gdata.data.finance;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.extensions.Money;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "price", nsAlias = FinanceNamespace.GF_ALIAS, nsUri = FinanceNamespace.GF)
public class Price extends ExtensionPoint {
    static final String XML_NAME = "price";

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Price.class)) {
            extensionProfile.declare(Price.class, Money.getDefaultDescription(true, true));
        }
    }

    public List<Money> getMoney() {
        return getRepeatingExtension(Money.class);
    }

    public void addMoney(Money money) {
        getMoney().add(money);
    }

    public boolean hasMoney() {
        return hasRepeatingExtension(Money.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Price.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Price}";
    }
}
