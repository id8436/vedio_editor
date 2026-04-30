.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;
.super Ljava/lang/Object;
.source "BaseLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public anchorLane:I

.field private spanMargins:[I

.field public startLane:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->startLane:I

    .line 46
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->anchorLane:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->startLane:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->anchorLane:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    if-lez v1, :cond_0

    .line 55
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->spanMargins:[I

    .line 56
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 57
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->spanMargins:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->hasSpanMargins()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;I)I
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->getSpanMargin(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;III)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->setSpanMargin(III)V

    return-void
.end method

.method private getSpanMargin(I)I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->spanMargins:[I

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->spanMargins:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private hasSpanMargins()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->spanMargins:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSpanMargin(III)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->spanMargins:[I

    if-nez v0, :cond_0

    .line 105
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->spanMargins:[I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->spanMargins:[I

    aput p2, v0, p1

    .line 109
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method invalidateLane()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->startLane:I

    .line 87
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->anchorLane:I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->spanMargins:[I

    .line 89
    return-void
.end method

.method setLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;)V
    .locals 1

    .prologue
    .line 81
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->startLane:I

    .line 82
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->anchorLane:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->anchorLane:I

    .line 83
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->startLane:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->anchorLane:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->spanMargins:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->spanMargins:[I

    array-length v0, v0

    .line 73
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    :goto_1
    if-ge v1, v0, :cond_1

    .line 76
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->spanMargins:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 72
    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method
