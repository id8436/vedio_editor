.class final Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState$1;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;
    .locals 1

    .prologue
    .line 1288
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;

    invoke-direct {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1286
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;
    .locals 1

    .prologue
    .line 1292
    new-array v0, p1, [Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1286
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState$1;->newArray(I)[Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;

    move-result-object v0

    return-object v0
.end method
