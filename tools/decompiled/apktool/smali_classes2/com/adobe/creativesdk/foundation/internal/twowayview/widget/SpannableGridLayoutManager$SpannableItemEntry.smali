.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;
.super Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;
.source "SpannableGridLayoutManager.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final colSpan:I

.field private final rowSpan:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;-><init>(II)V

    .line 45
    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->colSpan:I

    .line 46
    iput p4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->rowSpan:I

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

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->colSpan:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->rowSpan:I

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->colSpan:I

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->rowSpan:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->colSpan:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->rowSpan:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void
.end method
