.class public Lcom/google/gdata/data/photos/impl/MediaDataImpl;
.super Ljava/lang/Object;
.source "MediaDataImpl.java"

# interfaces
.implements Lcom/google/gdata/data/photos/MediaData;


# instance fields
.field private extPoint:Lcom/google/gdata/data/ExtensionPoint;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    .line 55
    return-void
.end method


# virtual methods
.method public addExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 170
    return-void
.end method

.method public addRepeatingExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 178
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 61
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 63
    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 66
    const-class v1, Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    invoke-static {}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 70
    :cond_0
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-static {v2}, Lcom/google/gdata/data/media/mediarss/MediaContent;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 72
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaContent;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 73
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaTitle;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 75
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaDescription;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 77
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-static {}, Lcom/google/gdata/data/media/mediarss/MediaKeywords;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 78
    invoke-static {}, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v2}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 80
    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 81
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 82
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaCredit;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 84
    return-void
.end method

.method public getMediaCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 110
    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getCategories()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getContents()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaCredits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaCredit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 122
    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getCredits()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    return-object v0
.end method

.method public getMediaKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaThumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 134
    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getThumbnails()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public removeExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->removeExtension(Lcom/google/gdata/data/Extension;)V

    .line 186
    return-void
.end method

.method public removeExtension(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->removeExtension(Ljava/lang/Class;)V

    .line 182
    return-void
.end method

.method public removeRepeatingExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->removeRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 190
    return-void
.end method

.method public setExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 174
    return-void
.end method

.method public setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    .line 158
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-direct {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v1, v0}, Lcom/google/gdata/data/ExtensionPoint;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 162
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V

    .line 163
    return-void
.end method
