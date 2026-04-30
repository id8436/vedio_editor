.class public Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;
.super Ljava/lang/Object;
.source "AdobePhotoAssetRendition.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field private _GUID:Ljava/lang/String;

.field private _dataPath:Ljava/net/URI;

.field private _type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-string/jumbo v0, "/revisions/(.\\\\w+)/renditions/(.\\\\w+)$"

    .line 187
    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 189
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 190
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 191
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_GUID:Ljava/lang/String;

    .line 193
    :cond_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_dataPath:Ljava/net/URI;

    .line 194
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    .line 195
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRevision;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_GUID:Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_dataPath:Ljava/net/URI;

    .line 182
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    .line 183
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/net/URI;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_GUID:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_dataPath:Ljava/net/URI;

    .line 174
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_dataPath:Ljava/net/URI;

    .line 144
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    .line 145
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/util/AdobePhotoUtils;->generateGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_GUID:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method public getCopy()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;
    .locals 4

    .prologue
    .line 168
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_GUID:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_dataPath:Ljava/net/URI;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;-><init>(Ljava/lang/String;Ljava/net/URI;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;)V

    return-object v0
.end method

.method public getDataPath()Ljava/net/URI;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_dataPath:Ljava/net/URI;

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_GUID:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_GUID:Ljava/lang/String;

    .line 151
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_dataPath:Ljava/net/URI;

    .line 152
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->values()[Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    move-result-object v0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    .line 153
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
    .line 157
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_GUID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_dataPath:Ljava/net/URI;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;->_type:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 160
    return-void
.end method
