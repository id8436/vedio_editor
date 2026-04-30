.class public final Lf/av;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ld/bd;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ld/bf;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ld/bd;Ljava/lang/Object;Ld/bf;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ld/bf;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/bd;",
            "TT;",
            "Ld/bf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lf/av;->a:Ld/bd;

    .line 96
    iput-object p2, p0, Lf/av;->b:Ljava/lang/Object;

    .line 97
    iput-object p3, p0, Lf/av;->c:Ld/bf;

    .line 98
    return-void
.end method

.method public static a(Ld/bf;Ld/bd;)Lf/av;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/bf;",
            "Ld/bd;",
            ")",
            "Lf/av",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    const-string/jumbo v0, "body == null"

    invoke-static {p0, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v0, "rawResponse == null"

    invoke-static {p1, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p1}, Ld/bd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rawResponse should not be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    new-instance v0, Lf/av;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lf/av;-><init>(Ld/bd;Ljava/lang/Object;Ld/bf;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ld/bd;)Lf/av;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ld/bd;",
            ")",
            "Lf/av",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    const-string/jumbo v0, "rawResponse == null"

    invoke-static {p1, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p1}, Ld/bd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rawResponse must be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    new-instance v0, Lf/av;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lf/av;-><init>(Ld/bd;Ljava/lang/Object;Ld/bf;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lf/av;->a:Ld/bd;

    invoke-virtual {v0}, Ld/bd;->b()I

    move-result v0

    return v0
.end method

.method public b()Ld/ag;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lf/av;->a:Ld/bd;

    invoke-virtual {v0}, Ld/bd;->e()Ld/ag;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lf/av;->a:Ld/bd;

    invoke-virtual {v0}, Ld/bd;->c()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lf/av;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Ld/bf;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lf/av;->c:Ld/bf;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lf/av;->a:Ld/bd;

    invoke-virtual {v0}, Ld/bd;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
