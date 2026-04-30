.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;
.super Ljava/lang/Object;
.source "AdobeAGCImageComponent.java"


# instance fields
.field private _contentType:Ljava/lang/String;

.field private _data:[B

.field private _file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field private _href:Ljava/lang/String;

.field private _sourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 1
    .param p1    # Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_href:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_data:[B

    .line 38
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_data:[B

    .line 29
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 30
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_href:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_contentType:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_sourcePath:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_data:[B

    .line 21
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_href:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_contentType:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 24
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_sourcePath:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_data:[B

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v0, "data"

    .line 53
    :goto_0
    const-string/jumbo v1, "{ href: \"%s\", type: \"%s\", contentType: \"%s\" }"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getHref()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getContentType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->getFile()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    const-string/jumbo v0, "file"

    goto :goto_0

    .line 50
    :cond_1
    const-string/jumbo v0, "invalid"

    goto :goto_0
.end method

.method public getFile()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_href:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;->_sourcePath:Ljava/lang/String;

    return-object v0
.end method
