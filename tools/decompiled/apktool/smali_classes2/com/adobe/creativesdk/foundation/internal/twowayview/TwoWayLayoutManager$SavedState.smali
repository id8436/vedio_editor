.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "TwoWayLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field protected static final EMPTY_STATE:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;


# instance fields
.field private anchorItemPosition:I

.field private itemSelectionState:Landroid/os/Bundle;

.field private final superState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 965
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->EMPTY_STATE:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    .line 1004
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->superState:Landroid/os/Parcelable;

    .line 973
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->EMPTY_STATE:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->superState:Landroid/os/Parcelable;

    .line 985
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->anchorItemPosition:I

    .line 986
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->itemSelectionState:Landroid/os/Bundle;

    .line 987
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    if-nez p1, :cond_0

    .line 977
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "superState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->EMPTY_STATE:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    if-eq p1, v0, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->superState:Landroid/os/Parcelable;

    .line 981
    return-void

    .line 980
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->itemSelectionState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->itemSelectionState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;)I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->anchorItemPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;I)I
    .locals 0

    .prologue
    .line 964
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->anchorItemPosition:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 995
    const/4 v0, 0x0

    return v0
.end method

.method public getSuperState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->superState:Landroid/os/Parcelable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1000
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->anchorItemPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->itemSelectionState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1002
    return-void
.end method
