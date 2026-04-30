.class public Lcom/google/gdata/client/finance/FinanceUtilities;
.super Ljava/lang/Object;
.source "FinanceUtilities.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makePortfolioEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/finance/PortfolioEntry;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/google/gdata/data/finance/PortfolioEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/PortfolioEntry;-><init>()V

    .line 54
    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v1, p0}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/finance/PortfolioEntry;->setTitle(Lcom/google/gdata/data/TextConstruct;)V

    .line 55
    :cond_0
    new-instance v1, Lcom/google/gdata/data/finance/PortfolioData;

    invoke-direct {v1}, Lcom/google/gdata/data/finance/PortfolioData;-><init>()V

    .line 56
    const-string/jumbo v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/google/gdata/data/finance/PortfolioData;->setCurrencyCode(Ljava/lang/String;)V

    .line 57
    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/gdata/data/finance/PortfolioEntry;->setPortfolioData(Lcom/google/gdata/data/finance/PortfolioData;)V

    .line 58
    return-object v0
.end method

.method public static makeTransactionEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/finance/TransactionEntry;
    .locals 6

    .prologue
    .line 91
    new-instance v0, Lcom/google/gdata/data/finance/TransactionEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/TransactionEntry;-><init>()V

    .line 92
    new-instance v1, Lcom/google/gdata/data/finance/TransactionData;

    invoke-direct {v1}, Lcom/google/gdata/data/finance/TransactionData;-><init>()V

    .line 93
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p0, "Buy"

    .line 94
    :cond_0
    invoke-virtual {v1, p0}, Lcom/google/gdata/data/finance/TransactionData;->setType(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "T00:00:00.000Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/gdata/data/DateTime;->parseDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/finance/TransactionData;->setDate(Lcom/google/gdata/data/DateTime;)V

    .line 96
    :cond_1
    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/finance/TransactionData;->setShares(Ljava/lang/Double;)V

    .line 97
    :cond_2
    const-string/jumbo v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 98
    new-instance v2, Lcom/google/gdata/data/finance/Price;

    invoke-direct {v2}, Lcom/google/gdata/data/finance/Price;-><init>()V

    .line 99
    new-instance v3, Lcom/google/gdata/data/extensions/Money;

    invoke-static {p3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4, p5}, Lcom/google/gdata/data/extensions/Money;-><init>(Ljava/lang/Double;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/gdata/data/finance/Price;->addMoney(Lcom/google/gdata/data/extensions/Money;)V

    .line 100
    invoke-virtual {v1, v2}, Lcom/google/gdata/data/finance/TransactionData;->setPrice(Lcom/google/gdata/data/finance/Price;)V

    .line 102
    :cond_3
    const-string/jumbo v2, ""

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 103
    new-instance v2, Lcom/google/gdata/data/finance/Commission;

    invoke-direct {v2}, Lcom/google/gdata/data/finance/Commission;-><init>()V

    .line 104
    new-instance v3, Lcom/google/gdata/data/extensions/Money;

    invoke-static {p4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4, p5}, Lcom/google/gdata/data/extensions/Money;-><init>(Ljava/lang/Double;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/gdata/data/finance/Commission;->addMoney(Lcom/google/gdata/data/extensions/Money;)V

    .line 105
    invoke-virtual {v1, v2}, Lcom/google/gdata/data/finance/TransactionData;->setCommission(Lcom/google/gdata/data/finance/Commission;)V

    .line 107
    :cond_4
    const-string/jumbo v2, ""

    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, p6}, Lcom/google/gdata/data/finance/TransactionData;->setNotes(Ljava/lang/String;)V

    .line 108
    :cond_5
    invoke-virtual {v0, v1}, Lcom/google/gdata/data/finance/TransactionEntry;->setTransactionData(Lcom/google/gdata/data/finance/TransactionData;)V

    .line 109
    return-object v0
.end method
