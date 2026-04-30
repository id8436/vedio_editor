.class public Lcom/b/a/g/e;
.super Ljava/lang/Object;
.source "FixedLoadProvider.java"

# interfaces
.implements Lcom/b/a/g/f;


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
        "<TA;TT;TZ;TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/c/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/c/s",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/b/a/d/d/f/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/d/f/c",
            "<TZ;TR;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/b/a/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/g/b",
            "<TT;TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/d/c/s;Lcom/b/a/d/d/f/c;Lcom/b/a/g/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c/s",
            "<TA;TT;>;",
            "Lcom/b/a/d/d/f/c",
            "<TZ;TR;>;",
            "Lcom/b/a/g/b",
            "<TT;TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "ModelLoader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/b/a/g/e;->a:Lcom/b/a/d/c/s;

    .line 32
    if-nez p2, :cond_1

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Transcoder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    iput-object p2, p0, Lcom/b/a/g/e;->b:Lcom/b/a/d/d/f/c;

    .line 37
    if-nez p3, :cond_2

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "DataLoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    iput-object p3, p0, Lcom/b/a/g/e;->c:Lcom/b/a/g/b;

    .line 41
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
    .line 64
    iget-object v0, p0, Lcom/b/a/g/e;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->a()Lcom/b/a/d/e;

    move-result-object v0

    return-object v0
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
    .line 72
    iget-object v0, p0, Lcom/b/a/g/e;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->b()Lcom/b/a/d/e;

    move-result-object v0

    return-object v0
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
    .line 80
    iget-object v0, p0, Lcom/b/a/g/e;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->c()Lcom/b/a/d/b;

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
    .line 88
    iget-object v0, p0, Lcom/b/a/g/e;->c:Lcom/b/a/g/b;

    invoke-interface {v0}, Lcom/b/a/g/b;->d()Lcom/b/a/d/f;

    move-result-object v0

    return-object v0
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
    .line 48
    iget-object v0, p0, Lcom/b/a/g/e;->a:Lcom/b/a/d/c/s;

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
    .line 56
    iget-object v0, p0, Lcom/b/a/g/e;->b:Lcom/b/a/d/d/f/c;

    return-object v0
.end method
