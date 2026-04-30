.class public Lcom/adobe/premiereclip/looks/CandyLook;
.super Lcom/adobe/premiereclip/looks/BaseLook;
.source "CandyLook.java"


# instance fields
.field private cubeDataUrl:Ljava/lang/String;

.field private libraryId:Ljava/lang/String;

.field private renditionPathUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/looks/CandyLook;)V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/CandyLook;->getLookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/CandyLook;->getLookName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/looks/BaseLook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/CandyLook;->getCubeDataUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/looks/CandyLook;->cubeDataUrl:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/CandyLook;->getRenditionPathUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/looks/CandyLook;->renditionPathUrl:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/CandyLook;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/looks/CandyLook;->libraryId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/looks/BaseLook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public drawThumbnail(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 5

    .prologue
    .line 77
    new-instance v0, Lcom/learnncode/mediachooser/b/a;

    invoke-direct {v0, p1, p2}, Lcom/learnncode/mediachooser/b/a;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 78
    sget-object v1, Lcom/learnncode/mediachooser/b/b;->a:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/premiereclip/looks/CandyLook;->renditionPathUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/learnncode/mediachooser/b/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/learnncode/mediachooser/b/b;

    .line 79
    return-void
.end method

.method public getCubeData(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 83
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/adobe/premiereclip/looks/CandyLook;->cubeDataUrl:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 89
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCubeDataUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/looks/CandyLook;->cubeDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/looks/CandyLook;->libraryId:Ljava/lang/String;

    return-object v0
.end method

.method public getRenditionPathUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/premiereclip/looks/CandyLook;->renditionPathUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCubeDataUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/adobe/premiereclip/looks/CandyLook;->cubeDataUrl:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setLibraryId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/adobe/premiereclip/looks/CandyLook;->libraryId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setRenditionPathUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/premiereclip/looks/CandyLook;->renditionPathUrl:Ljava/lang/String;

    .line 65
    return-void
.end method
