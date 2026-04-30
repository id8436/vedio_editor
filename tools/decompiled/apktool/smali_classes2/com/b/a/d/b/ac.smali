.class Lcom/b/a/d/b/ac;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/d/b/ab;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/b/a/d/b/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/d/b/z;

    .line 37
    invoke-interface {v0}, Lcom/b/a/d/b/z;->d()V

    move v0, v1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
