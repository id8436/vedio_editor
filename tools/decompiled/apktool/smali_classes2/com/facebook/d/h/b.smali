.class final Lcom/facebook/d/h/b;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Lcom/facebook/d/h/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/d/h/i",
        "<",
        "Ljava/io/Closeable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/facebook/d/d/b;->a(Ljava/io/Closeable;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Ljava/io/Closeable;

    invoke-virtual {p0, p1}, Lcom/facebook/d/h/b;->a(Ljava/io/Closeable;)V

    return-void
.end method
