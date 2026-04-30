.class Lcom/learnncode/mediachooser/b/j;
.super Ljava/lang/Object;
.source "MediaAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/learnncode/mediachooser/b/i;


# direct methods
.method constructor <init>(Lcom/learnncode/mediachooser/b/i;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/learnncode/mediachooser/b/j;->b:Lcom/learnncode/mediachooser/b/i;

    iput-object p2, p0, Lcom/learnncode/mediachooser/b/j;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/j;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/j;->b:Lcom/learnncode/mediachooser/b/i;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/b/i;->a()V

    .line 246
    return-void

    .line 244
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/learnncode/mediachooser/b/j;->b:Lcom/learnncode/mediachooser/b/i;

    invoke-virtual {v1}, Lcom/learnncode/mediachooser/b/i;->a()V

    .line 245
    throw v0
.end method
