.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;
.super Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;
.source "BaseLayoutManager.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private itemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

.field private laneSize:I

.field private lanes:[Landroid/graphics/Rect;

.field private orientation:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 628
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 581
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 583
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->values()[Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->orientation:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->laneSize:I

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 587
    if-lez v2, :cond_0

    .line 588
    new-array v1, v2, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->lanes:[Landroid/graphics/Rect;

    move v1, v0

    .line 589
    :goto_0
    if-ge v1, v2, :cond_0

    .line 590
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 591
    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 592
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->lanes:[Landroid/graphics/Rect;

    aput-object v3, v4, v1

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 597
    if-lez v2, :cond_1

    .line 598
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->itemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    move v1, v0

    .line 599
    :goto_1
    if-ge v1, v2, :cond_1

    .line 600
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    .line 601
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->itemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-virtual {v3, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->restoreItemEntry(ILcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;)V

    .line 599
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 604
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$1;)V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 578
    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;)[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->lanes:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$302(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->lanes:[Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;)Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->orientation:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    return-object v0
.end method

.method static synthetic access$402(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->orientation:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    return-object p1
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;)I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->laneSize:I

    return v0
.end method

.method static synthetic access$502(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;I)I
    .locals 0

    .prologue
    .line 570
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->laneSize:I

    return p1
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->itemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    return-object v0
.end method

.method static synthetic access$602(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->itemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    return-object p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 608
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 610
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->orientation:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->laneSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->lanes:[Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->lanes:[Landroid/graphics/Rect;

    array-length v0, v0

    .line 614
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v1

    .line 616
    :goto_1
    if-ge v2, v0, :cond_1

    .line 617
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->lanes:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 616
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 613
    goto :goto_0

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->itemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->itemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->size()I

    move-result v0

    .line 621
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    :goto_3
    if-ge v1, v0, :cond_3

    .line 624
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->itemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->getItemEntry(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move v0, v1

    .line 620
    goto :goto_2

    .line 626
    :cond_3
    return-void
.end method
