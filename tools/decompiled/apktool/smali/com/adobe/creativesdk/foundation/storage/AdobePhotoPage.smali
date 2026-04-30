.class public Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;
.super Ljava/lang/Object;
.source "AdobePhotoPage.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field private _key:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;->_key:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public getCopy()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;->_key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public isEqualToPage(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;)Z
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;->_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;->_key:Ljava/lang/String;

    .line 70
    return-void
.end method

.method setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;->_key:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;->_key:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
