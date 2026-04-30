.class final Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState$1;
.super Ljava/lang/Object;
.source "BehanceSDKDrawerBehavior.java"

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;
    .locals 1

    .prologue
    .line 665
    new-instance v0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 662
    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;
    .locals 1

    .prologue
    .line 669
    new-array v0, p1, [Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 662
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState$1;->newArray(I)[Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;

    move-result-object v0

    return-object v0
.end method
