.class final Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates$1;
.super Ljava/lang/Object;
.source "ItemSelectionSupport.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;
    .locals 2

    .prologue
    .line 417
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;-><init>(Landroid/os/Parcel;Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates$1;->createFromParcel(Landroid/os/Parcel;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;
    .locals 1

    .prologue
    .line 422
    new-array v0, p1, [Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates$1;->newArray(I)[Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    move-result-object v0

    return-object v0
.end method
