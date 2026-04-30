.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;
.super Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;
.source "StaggeredGridLayoutManager.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private height:I

.field private final span:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;-><init>(II)V

    .line 46
    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->span:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;-><init>(Landroid/os/Parcel;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->span:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->width:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->height:I

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->span:I

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->width:I

    return v0
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->width:I

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->height:I

    return v0
.end method

.method static synthetic access$202(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->height:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->span:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method
