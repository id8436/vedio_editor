.class public Lcom/d/a/a/j;
.super Lcom/d/a/a/m;
.source "JsonParseException.java"


# instance fields
.field protected transient a:Lcom/d/a/a/k;


# direct methods
.method public constructor <init>(Lcom/d/a/a/k;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/d/a/a/m;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    .line 38
    iput-object p1, p0, Lcom/d/a/a/j;->a:Lcom/d/a/a/k;

    .line 39
    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->f()Lcom/d/a/a/i;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 45
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0, p3}, Lcom/d/a/a/m;-><init>(Ljava/lang/String;Lcom/d/a/a/i;Ljava/lang/Throwable;)V

    .line 46
    iput-object p1, p0, Lcom/d/a/a/j;->a:Lcom/d/a/a/k;

    .line 47
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->f()Lcom/d/a/a/i;

    move-result-object v0

    goto :goto_0
.end method
