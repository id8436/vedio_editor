.class public abstract Lcom/google/gdata/data/sites/BasePageEntry;
.super Lcom/google/gdata/data/sites/BaseContentEntry;
.source "BasePageEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/google/gdata/data/sites/BasePageEntry",
        "<TE;>;>",
        "Lcom/google/gdata/data/sites/BaseContentEntry",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/data/sites/BaseContentEntry;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/gdata/data/sites/BaseContentEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 48
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2

    .prologue
    .line 52
    const-class v0, Lcom/google/gdata/data/sites/BasePageEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/sites/BaseContentEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 56
    const-class v0, Lcom/google/gdata/data/sites/BasePageEntry;

    const-class v1, Lcom/google/gdata/data/sites/PageName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getPageName()Lcom/google/gdata/data/sites/PageName;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/google/gdata/data/sites/PageName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BasePageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/sites/PageName;

    return-object v0
.end method

.method public getTemplateLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "http://schemas.google.com/sites/2008#template"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/BasePageEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public hasPageName()Z
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/google/gdata/data/sites/PageName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BasePageEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setPageName(Lcom/google/gdata/data/sites/PageName;)V
    .locals 1

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    const-class v0, Lcom/google/gdata/data/sites/PageName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BasePageEntry;->removeExtension(Ljava/lang/Class;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/BasePageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{BasePageEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/gdata/data/sites/BaseContentEntry;->toString()Ljava/lang/String;

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

.method protected validate()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
