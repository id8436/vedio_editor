.class final Lcom/facebook/am;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;
    .locals 2

    .prologue
    .line 2368
    new-instance v0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcel;Lcom/facebook/ad;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;
    .locals 1

    .prologue
    .line 2372
    new-array v0, p1, [Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2366
    invoke-virtual {p0, p1}, Lcom/facebook/am;->a(Landroid/os/Parcel;)Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2366
    invoke-virtual {p0, p1}, Lcom/facebook/am;->a(I)[Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    move-result-object v0

    return-object v0
.end method
