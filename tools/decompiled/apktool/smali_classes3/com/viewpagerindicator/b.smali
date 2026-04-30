.class final Lcom/viewpagerindicator/b;
.super Ljava/lang/Object;
.source "CirclePageIndicator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/viewpagerindicator/CirclePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
    .locals 2

    .prologue
    .line 546
    new-instance v0, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lcom/viewpagerindicator/a;)V

    return-object v0
.end method

.method public a(I)[Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
    .locals 1

    .prologue
    .line 551
    new-array v0, p1, [Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/b;->a(Landroid/os/Parcel;)Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/b;->a(I)[Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method
