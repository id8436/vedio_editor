.class public Lcom/google/gdata/data/photos/impl/TagDataImpl;
.super Lcom/google/gdata/data/photos/impl/GphotoDataImpl;
.source "TagDataImpl.java"

# interfaces
.implements Lcom/google/gdata/data/photos/TagData;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 40
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-static {v0, v0}, Lcom/google/gdata/data/photos/GphotoWeight;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/TagDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 48
    return-void
.end method

.method public getWeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/google/gdata/data/photos/GphotoWeight;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/TagDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoWeight;

    .line 56
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoWeight;->getValue()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public setWeight(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Lcom/google/gdata/data/photos/GphotoWeight;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoWeight;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/TagDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoWeight;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/TagDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method
