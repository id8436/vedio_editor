.class final Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState$2;
.super Ljava/lang/Object;
.source "ClassLoaderSavedState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "superState must be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;->EMPTY_STATE:Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState$2;->createFromParcel(Landroid/os/Parcel;)Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;
    .locals 1

    .prologue
    .line 43
    new-array v0, p1, [Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState$2;->newArray(I)[Lcom/adobe/creativesdk/foundation/internal/grid/ClassLoaderSavedState;

    move-result-object v0

    return-object v0
.end method
