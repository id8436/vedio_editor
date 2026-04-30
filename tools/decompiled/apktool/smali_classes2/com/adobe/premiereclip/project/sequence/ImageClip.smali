.class public Lcom/adobe/premiereclip/project/sequence/ImageClip;
.super Lcom/adobe/premiereclip/project/sequence/Clip;
.source "ImageClip.java"


# instance fields
.field private storyCardText:Ljava/lang/String;

.field private titleImage:Lcom/adobe/premiereclip/media/TitleImage;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJZLjava/lang/String;)V
    .locals 8

    .prologue
    .line 38
    if-eqz p6, :cond_0

    sget-object v6, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/project/sequence/Clip;-><init>(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->storyCardText:Ljava/lang/String;

    .line 40
    return-void

    .line 38
    :cond_0
    sget-object v6, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    goto :goto_0
.end method


# virtual methods
.method public copyTitleImage()Lcom/adobe/premiereclip/media/TitleImage;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/media/TitleImage;->copy()Lcom/adobe/premiereclip/media/TitleImage;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/media/TitleImage;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStoryCardText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->storyCardText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/media/TitleImage;->getTextColor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/media/TitleImage;->getTitleText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isStoryCard()Z
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->STORY_CARD:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/media/TitleImage;->setBackgroundColor(Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method public setStoryCard(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->STORY_CARD:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->setClipType(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    .line 113
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->storyCardText:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->restoreClipOptions()V

    .line 115
    const-string/jumbo v0, "0"

    invoke-static {v0}, Lcom/adobe/premiereclip/looks/LocalLooks;->getClipLook(Ljava/lang/String;)Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->look:Lcom/adobe/premiereclip/looks/BaseLook;

    .line 116
    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/media/TitleImage;->setTextColor(Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method public setTitleImage(Lcom/adobe/premiereclip/media/TitleImage;)V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v1, :cond_0

    .line 44
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    .line 45
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/media/TitleImage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setAssetPath(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    const/16 v1, 0x780

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setWidth(I)V

    .line 47
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    const/16 v1, 0x438

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setHeight(I)V

    .line 48
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setRotation(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 50
    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/media/TitleImage;->setTitleText(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public updateTitleImage()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/media/TitleImage;->update()V

    .line 62
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setAssetId(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/media/TitleImage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setAssetPath(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/media/TitleImage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setOriginalAssetPath(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/adobe/premiereclip/project/sequence/ImageClip;->titleImage:Lcom/adobe/premiereclip/media/TitleImage;

    .line 66
    invoke-virtual {v3}, Lcom/adobe/premiereclip/media/TitleImage;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 65
    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setOriginalAssetDate(Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 69
    :cond_0
    return-void
.end method
