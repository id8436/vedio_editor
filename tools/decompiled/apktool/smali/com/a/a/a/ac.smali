.class public Lcom/a/a/a/ac;
.super Ljava/lang/Object;
.source "Params.java"


# instance fields
.field a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:I

.field private f:J

.field private g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/a/a/a/ac;->a:I

    .line 27
    iput-object v1, p0, Lcom/a/a/a/ac;->b:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/a/a/a/ac;->c:Ljava/lang/String;

    .line 29
    iput-boolean v0, p0, Lcom/a/a/a/ac;->d:Z

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/a/a/a/ac;->h:J

    .line 41
    iput p1, p0, Lcom/a/a/a/ac;->e:I

    .line 42
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/a/ac;
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/a/a/a/ac;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/a/a/a/ac;->a:I

    .line 54
    :cond_0
    return-object p0
.end method

.method public b()Lcom/a/a/a/ac;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/ac;->d:Z

    .line 96
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/a/a/a/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/a/a/a/ac;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/a/a/a/ac;->d:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/a/a/a/ac;->e:I

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/a/a/a/ac;->f:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/a/a/a/ac;->h:J

    return-wide v0
.end method

.method public i()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/a/a/a/ac;->g:Ljava/util/HashSet;

    return-object v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 330
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/a/a/a/ac;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
