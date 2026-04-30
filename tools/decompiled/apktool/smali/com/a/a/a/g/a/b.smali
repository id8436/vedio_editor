.class public Lcom/a/a/a/g/a/b;
.super Lcom/a/a/a/g/b;
.source "CallbackMessage.java"


# instance fields
.field private d:I

.field private e:I

.field private f:Z

.field private g:Lcom/a/a/a/r;

.field private h:Ljava/lang/Throwable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/a/a/a/g/i;->a:Lcom/a/a/a/g/i;

    invoke-direct {p0, v0}, Lcom/a/a/a/g/b;-><init>(Lcom/a/a/a/g/i;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/a/a/a/g/a/b;->g:Lcom/a/a/a/r;

    .line 32
    iput-object v0, p0, Lcom/a/a/a/g/a/b;->h:Ljava/lang/Throwable;

    .line 33
    return-void
.end method

.method public a(Lcom/a/a/a/r;I)V
    .locals 0

    .prologue
    .line 36
    iput p2, p0, Lcom/a/a/a/g/a/b;->d:I

    .line 37
    iput-object p1, p0, Lcom/a/a/a/g/a/b;->g:Lcom/a/a/a/r;

    .line 38
    return-void
.end method

.method public a(Lcom/a/a/a/r;II)V
    .locals 0

    .prologue
    .line 41
    iput p2, p0, Lcom/a/a/a/g/a/b;->d:I

    .line 42
    iput p3, p0, Lcom/a/a/a/g/a/b;->e:I

    .line 43
    iput-object p1, p0, Lcom/a/a/a/g/a/b;->g:Lcom/a/a/a/r;

    .line 44
    return-void
.end method

.method public a(Lcom/a/a/a/r;IZLjava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    iput p2, p0, Lcom/a/a/a/g/a/b;->d:I

    .line 48
    iput-boolean p3, p0, Lcom/a/a/a/g/a/b;->f:Z

    .line 49
    iput-object p1, p0, Lcom/a/a/a/g/a/b;->g:Lcom/a/a/a/r;

    .line 50
    iput-object p4, p0, Lcom/a/a/a/g/a/b;->h:Ljava/lang/Throwable;

    .line 51
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/a/a/a/g/a/b;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/a/a/a/g/a/b;->e:I

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/a/a/a/g/a/b;->f:Z

    return v0
.end method

.method public f()Lcom/a/a/a/r;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/a/a/a/g/a/b;->g:Lcom/a/a/a/r;

    return-object v0
.end method

.method public g()Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/a/a/a/g/a/b;->h:Ljava/lang/Throwable;

    return-object v0
.end method
