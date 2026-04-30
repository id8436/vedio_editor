.class final Lcom/facebook/login/h;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient;
    .locals 1

    .prologue
    .line 730
    new-instance v0, Lcom/facebook/login/LoginClient;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginClient;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/login/LoginClient;
    .locals 1

    .prologue
    .line 735
    new-array v0, p1, [Lcom/facebook/login/LoginClient;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 727
    invoke-virtual {p0, p1}, Lcom/facebook/login/h;->a(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 727
    invoke-virtual {p0, p1}, Lcom/facebook/login/h;->a(I)[Lcom/facebook/login/LoginClient;

    move-result-object v0

    return-object v0
.end method
