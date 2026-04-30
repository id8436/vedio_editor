.class final Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode$1;
.super Ljava/lang/Object;
.source "AdobeAuthErrorCode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->values()[Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode$1;->createFromParcel(Landroid/os/Parcel;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;
    .locals 1

    .prologue
    .line 144
    new-array v0, p1, [Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode$1;->newArray(I)[Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v0

    return-object v0
.end method
