.class Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;
.super Landroid/util/SparseBooleanArray;
.source "ItemSelectionSupport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALSE:I = 0x0

.field private static final TRUE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 413
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 384
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 386
    invoke-direct {p0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 388
    if-lez v4, :cond_1

    move v3, v2

    .line 389
    :goto_0
    if-ge v3, v4, :cond_1

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 392
    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->put(IZ)V

    .line 389
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 391
    goto :goto_1

    .line 395
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$1;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->size()I

    move-result v3

    .line 405
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v1

    .line 407
    :goto_0
    if-ge v2, v3, :cond_1

    .line 408
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->valueAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 409
    goto :goto_1

    .line 411
    :cond_1
    return-void
.end method
