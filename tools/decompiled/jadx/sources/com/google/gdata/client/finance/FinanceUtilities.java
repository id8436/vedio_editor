package com.google.gdata.client.finance;

import com.google.gdata.data.DateTime;
import com.google.gdata.data.PlainTextConstruct;
import com.google.gdata.data.extensions.Money;
import com.google.gdata.data.finance.Commission;
import com.google.gdata.data.finance.PortfolioData;
import com.google.gdata.data.finance.PortfolioEntry;
import com.google.gdata.data.finance.Price;
import com.google.gdata.data.finance.TransactionData;
import com.google.gdata.data.finance.TransactionEntry;

/* JADX INFO: loaded from: classes3.dex */
public class FinanceUtilities {
    private FinanceUtilities() {
    }

    public static PortfolioEntry makePortfolioEntry(String str, String str2) {
        PortfolioEntry portfolioEntry = new PortfolioEntry();
        if (!str.equals("")) {
            portfolioEntry.setTitle(new PlainTextConstruct(str));
        }
        PortfolioData portfolioData = new PortfolioData();
        if (!str2.equals("")) {
            portfolioData.setCurrencyCode(str2);
        }
        portfolioEntry.setPortfolioData(portfolioData);
        return portfolioEntry;
    }

    public static TransactionEntry makeTransactionEntry(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        TransactionEntry transactionEntry = new TransactionEntry();
        TransactionData transactionData = new TransactionData();
        if (str.equals("")) {
            str = "Buy";
        }
        transactionData.setType(str);
        if (!str2.equals("")) {
            transactionData.setDate(DateTime.parseDateTime(str2 + "T00:00:00.000Z"));
        }
        if (!str3.equals("")) {
            transactionData.setShares(Double.valueOf(Double.valueOf(str3).doubleValue()));
        }
        if (!str4.equals("")) {
            Price price = new Price();
            price.addMoney(new Money(Double.valueOf(Double.valueOf(str4).doubleValue()), str6));
            transactionData.setPrice(price);
        }
        if (!str5.equals("")) {
            Commission commission = new Commission();
            commission.addMoney(new Money(Double.valueOf(Double.valueOf(str5).doubleValue()), str6));
            transactionData.setCommission(commission);
        }
        if (!str7.equals("")) {
            transactionData.setNotes(str7);
        }
        transactionEntry.setTransactionData(transactionData);
        return transactionEntry;
    }
}
