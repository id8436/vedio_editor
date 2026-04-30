.class public Lcom/b/a/g/a;
.super Ljava/lang/Object;
.source "ChildLoadProvider.java"

# interfaces
.implements Lcom/b/a/g/f;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/g/f",
        "<TA;TT;TZ;TR;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/g/f",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private b:Lcom/b/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/e",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation
.end field

.field private c:Lcom/b/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/e",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private d:Lcom/b/a/d/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/f",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private e:Lcom/b/a/d/d/f/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/d/f/c",
            "<TZ;TR;>;"
        }
    .end annotation
.end field

.field private f:Lcom/b/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/g/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/f",
            "<TA;TT;TZ;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/f;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/d/e;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/b/a/g/a;->b:Lcom/b/a/d/e;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/f;

    invoke-interface {v0}, Lcom/b/a/g/f;->a()Lcom/b/a/d/e;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/b/a/d/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/b/a/g/a;->f:Lcom/b/a/d/b;

    .line 83
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<TT;TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lcom/b/a/g/a;->c:Lcom/b/a/d/e;

    .line 54
    return-void
.end method

.method public b()Lcom/b/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/e",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/d/e;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/b/a/g/a;->c:Lcom/b/a/d/e;

    .line 105
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/f;

    invoke-interface {v0}, Lcom/b/a/g/f;->b()Lcom/b/a/d/e;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Lcom/b/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/b/a/g/a;->f:Lcom/b/a/d/b;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/b/a/g/a;->f:Lcom/b/a/d/b;

    .line 117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/f;

    invoke-interface {v0}, Lcom/b/a/g/f;->c()Lcom/b/a/d/b;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/b/a/g/a;->g()Lcom/b/a/g/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/b/a/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/f",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/b/a/g/a;->d:Lcom/b/a/d/f;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/b/a/g/a;->d:Lcom/b/a/d/f;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/f;

    invoke-interface {v0}, Lcom/b/a/g/f;->d()Lcom/b/a/d/f;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Lcom/b/a/d/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/c/s",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/f;

    invoke-interface {v0}, Lcom/b/a/g/f;->e()Lcom/b/a/d/c/s;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/b/a/d/d/f/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/d/f/c",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/b/a/g/a;->e:Lcom/b/a/d/d/f/c;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/b/a/g/a;->e:Lcom/b/a/d/d/f/c;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/g/a;->a:Lcom/b/a/g/f;

    invoke-interface {v0}, Lcom/b/a/g/f;->f()Lcom/b/a/d/d/f/c;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Lcom/b/a/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/g/a",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/g/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
