.class final Lcom/getbase/floatingactionbutton/j;
.super Ljava/lang/Object;
.source "FloatingActionsMenu.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    .locals 2

    .prologue
    .line 614
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcel;Lcom/getbase/floatingactionbutton/e;)V

    return-object v0
.end method

.method public a(I)[Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    .locals 1

    .prologue
    .line 619
    new-array v0, p1, [Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/j;->a(Landroid/os/Parcel;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/j;->a(I)[Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    move-result-object v0

    return-object v0
.end method
