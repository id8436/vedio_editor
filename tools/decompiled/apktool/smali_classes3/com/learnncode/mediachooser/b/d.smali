.class Lcom/learnncode/mediachooser/b/d;
.super Lcom/learnncode/mediachooser/b/l;
.source "MediaAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/learnncode/mediachooser/b/l",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/learnncode/mediachooser/b/b;


# direct methods
.method constructor <init>(Lcom/learnncode/mediachooser/b/b;)V
    .locals 1

    .prologue
    .line 293
    iput-object p1, p0, Lcom/learnncode/mediachooser/b/d;->a:Lcom/learnncode/mediachooser/b/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/learnncode/mediachooser/b/l;-><init>(Lcom/learnncode/mediachooser/b/c;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/d;->a:Lcom/learnncode/mediachooser/b/b;

    invoke-static {v0}, Lcom/learnncode/mediachooser/b/b;->a(Lcom/learnncode/mediachooser/b/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 298
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 300
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/d;->a:Lcom/learnncode/mediachooser/b/b;

    iget-object v1, p0, Lcom/learnncode/mediachooser/b/d;->a:Lcom/learnncode/mediachooser/b/b;

    iget-object v2, p0, Lcom/learnncode/mediachooser/b/d;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/learnncode/mediachooser/b/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/learnncode/mediachooser/b/b;->a(Lcom/learnncode/mediachooser/b/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
