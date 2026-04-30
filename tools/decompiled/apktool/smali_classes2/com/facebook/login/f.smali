.class final Lcom/facebook/login/f;
.super Ljava/lang/Object;
.source "KatanaProxyLoginMethodHandler.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/login/KatanaProxyLoginMethodHandler;
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    invoke-direct {v0, p1}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/login/KatanaProxyLoginMethodHandler;
    .locals 1

    .prologue
    .line 195
    new-array v0, p1, [Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/facebook/login/f;->a(Landroid/os/Parcel;)Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/facebook/login/f;->a(I)[Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    move-result-object v0

    return-object v0
.end method
