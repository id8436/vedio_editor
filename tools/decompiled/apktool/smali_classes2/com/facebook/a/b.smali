.class final Lcom/facebook/a/b;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/a/a;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/facebook/a/b;->a:Lcom/facebook/a/a;

    iget-wide v2, p0, Lcom/facebook/a/b;->b:J

    iget-object v1, p0, Lcom/facebook/a/b;->c:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/facebook/a/a;->a(Lcom/facebook/a/a;JLjava/lang/String;)V

    .line 305
    return-void
.end method
