.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;
.super Ljava/lang/Object;
.source "AdobeUploadFileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private assetID:Ljava/lang/String;

.field private dataStream:Ljava/io/InputStream;

.field private filePath:Ljava/lang/String;

.field private fileURL:Ljava/net/URL;

.field private height:I

.field private mimeType:Ljava/lang/String;

.field private savedDataName:Ljava/lang/String;

.field private type:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->width:I

    .line 21
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->height:I

    .line 68
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;->ADOBE_UPLOAD_DATA_TYPE_PATH:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->setType(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->width:I

    .line 21
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->height:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->filePath:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->mimeType:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->assetID:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->fileURL:Ljava/net/URL;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->width:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->height:I

    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getAssetID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->assetID:Ljava/lang/String;

    return-object v0
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->dataStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->fileURL:Ljava/net/URL;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->height:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedDataName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->savedDataName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->type:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->width:I

    return v0
.end method

.method public setAssetID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->assetID:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setDataStream(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->dataStream:Ljava/io/InputStream;

    .line 116
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->filePath:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setFileURL(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->fileURL:Ljava/net/URL;

    .line 46
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->height:I

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->mimeType:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setSavedDataName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->savedDataName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setType(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->type:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;

    .line 124
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->assetID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->fileURL:Ljava/net/URL;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 94
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void
.end method
