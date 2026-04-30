.class public Lcom/google/gdata/data/finance/PositionFeedLink;
.super Lcom/google/gdata/data/extensions/FeedLink;
.source "PositionFeedLink.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/extensions/FeedLink",
        "<",
        "Lcom/google/gdata/data/finance/TransactionFeed;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/gdata/data/finance/TransactionFeed;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/extensions/FeedLink;-><init>(Ljava/lang/Class;)V

    .line 35
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/google/gdata/data/finance/PositionFeedLink;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 64
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 65
    return-object v0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/google/gdata/data/finance/PositionFeedLink;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/extensions/FeedLink;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 43
    invoke-virtual {p1}, Lcom/google/gdata/data/ExtensionProfile;->getFeedLinkProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionProfile;-><init>()V

    .line 46
    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareFeedLinkProfile(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 48
    :cond_1
    new-instance v1, Lcom/google/gdata/data/finance/TransactionFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/finance/TransactionFeed;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gdata/data/finance/TransactionFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{PositionFeedLink "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
