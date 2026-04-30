.class public Lcom/google/gdata/data/extensions/MessageFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "MessageFeed.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/g/2005#message"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/extensions/MessageFeed;",
        "Lcom/google/gdata/data/extensions/MessageEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/google/gdata/data/extensions/MessageEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/MessageFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/MessageEntry;->MESSAGE_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 47
    const-class v0, Lcom/google/gdata/data/extensions/MessageEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/MessageFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/MessageEntry;->MESSAGE_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 56
    return-void
.end method
