.class public Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;
.super Ljava/lang/Object;
.source "AdobePhotoAssetRevision.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field private _GUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;->_GUID:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/util/AdobePhotoUtils;->generateGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;->_GUID:Ljava/lang/String;

    .line 89
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;->_GUID:Ljava/lang/String;

    .line 93
    if-eqz p2, :cond_1

    .line 94
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;->_GUID:Ljava/lang/String;

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string/jumbo v0, "/revisions/([a-zA-Z0-9]+)"

    .line 97
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;->_GUID:Ljava/lang/String;

    goto :goto_0
.end method

.method public static create()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCopy()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;->_GUID:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;->_GUID:Ljava/lang/String;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;->_GUID:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setGUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;->_GUID:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;->_GUID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
