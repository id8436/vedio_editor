.class public Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;
.super Ljava/lang/Object;
.source "BehanceSDKShareContentDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x47a6691b9a5310abL


# instance fields
.field private coverImageURL:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private longUrlToShare:Ljava/lang/String;

.field private ownerName:Ljava/lang/String;

.field private ownerProfileURL:Ljava/lang/String;

.field private shortUrlToShare:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoverImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->coverImageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLongUrlToShare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->longUrlToShare:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->ownerName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerProfileURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->ownerProfileURL:Ljava/lang/String;

    return-object v0
.end method

.method public getShortUrlToShare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->shortUrlToShare:Ljava/lang/String;

    return-object v0
.end method

.method public getTagsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTagsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->tags:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 98
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCoverImageURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->coverImageURL:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->description:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->id:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setLongUrlToShare(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->longUrlToShare:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setOwnerName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->ownerName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setOwnerProfileURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->ownerProfileURL:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setShortUrlToShare(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->shortUrlToShare:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    iput-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->tags:Ljava/util/List;

    .line 104
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->tags:Ljava/util/List;

    .line 85
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->title:Ljava/lang/String;

    .line 45
    return-void
.end method
