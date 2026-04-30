.class final Lcom/twitter/sdk/android/core/aa;
.super Ljava/lang/Object;
.source "TwitterAuthToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/TwitterAuthToken;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Landroid/os/Parcel;Lcom/twitter/sdk/android/core/aa;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/sdk/android/core/TwitterAuthToken;
    .locals 1

    .prologue
    .line 37
    new-array v0, p1, [Lcom/twitter/sdk/android/core/TwitterAuthToken;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/aa;->a(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/TwitterAuthToken;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/aa;->a(I)[Lcom/twitter/sdk/android/core/TwitterAuthToken;

    move-result-object v0

    return-object v0
.end method
