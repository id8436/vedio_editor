.class Lcom/learnncode/mediachooser/b/h;
.super Landroid/os/Handler;
.source "MediaAsync.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/learnncode/mediachooser/b/c;)V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/learnncode/mediachooser/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 651
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/learnncode/mediachooser/b/g;

    .line 652
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 661
    :goto_0
    return-void

    .line 655
    :pswitch_0
    iget-object v1, v0, Lcom/learnncode/mediachooser/b/g;->a:Lcom/learnncode/mediachooser/b/b;

    iget-object v0, v0, Lcom/learnncode/mediachooser/b/g;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/learnncode/mediachooser/b/b;->c(Lcom/learnncode/mediachooser/b/b;Ljava/lang/Object;)V

    goto :goto_0

    .line 658
    :pswitch_1
    iget-object v1, v0, Lcom/learnncode/mediachooser/b/g;->a:Lcom/learnncode/mediachooser/b/b;

    iget-object v0, v0, Lcom/learnncode/mediachooser/b/g;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/learnncode/mediachooser/b/b;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
