.class public Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;
.super Landroid/support/v4/view/AbsSavedState;
.source "BehanceSDKDrawerBehavior.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 661
    new-instance v0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState$1;

    invoke-direct {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState$1;-><init>()V

    invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 646
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 648
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;->state:I

    .line 651
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    .prologue
    .line 653
    invoke-direct {p0, p1}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 654
    iput p2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;->state:I

    .line 655
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 658
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 659
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    return-void
.end method
