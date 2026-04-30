.class Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;
.super Landroid/support/v4/util/LongSparseArray;
.source "ItemSelectionSupport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LongSparseArray",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 459
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 430
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 432
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 434
    if-lez v1, :cond_0

    .line 435
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 438
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->put(JLjava/lang/Object;)V

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$1;)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->size()I

    move-result v2

    .line 451
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 454
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 455
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 457
    :cond_0
    return-void
.end method
