.class final Lcom/facebook/login/k;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient$Request;
    .locals 2

    .prologue
    .line 521
    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/login/LoginClient$Request;-><init>(Landroid/os/Parcel;Lcom/facebook/login/h;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/login/LoginClient$Request;
    .locals 1

    .prologue
    .line 526
    new-array v0, p1, [Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/facebook/login/k;->a(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/facebook/login/k;->a(I)[Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    return-object v0
.end method
