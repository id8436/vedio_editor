.class public abstract Lcom/d/a/a/c/c;
.super Lcom/d/a/a/a/a;
.source "JsonGeneratorImpl.java"


# static fields
.field protected static final n:[I


# instance fields
.field protected final o:Lcom/d/a/a/b/c;

.field protected p:[I

.field protected q:I

.field protected r:Lcom/d/a/a/b/b;

.field protected s:Lcom/d/a/a/r;

.field protected t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/d/a/a/b/a;->f()[I

    move-result-object v0

    sput-object v0, Lcom/d/a/a/c/c;->n:[I

    return-void
.end method

.method public constructor <init>(Lcom/d/a/a/b/c;ILcom/d/a/a/p;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p2, p3}, Lcom/d/a/a/a/a;-><init>(ILcom/d/a/a/p;)V

    .line 53
    sget-object v0, Lcom/d/a/a/c/c;->n:[I

    iput-object v0, p0, Lcom/d/a/a/c/c;->p:[I

    .line 84
    sget-object v0, Lcom/d/a/a/e/d;->a:Lcom/d/a/a/b/j;

    iput-object v0, p0, Lcom/d/a/a/c/c;->s:Lcom/d/a/a/r;

    .line 104
    iput-object p1, p0, Lcom/d/a/a/c/c;->o:Lcom/d/a/a/b/c;

    .line 105
    sget-object v0, Lcom/d/a/a/h;->h:Lcom/d/a/a/h;

    invoke-virtual {v0, p2}, Lcom/d/a/a/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/16 v0, 0x7f

    iput v0, p0, Lcom/d/a/a/c/c;->q:I

    .line 109
    :cond_0
    sget-object v0, Lcom/d/a/a/h;->d:Lcom/d/a/a/h;

    invoke-virtual {v0, p2}, Lcom/d/a/a/h;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/d/a/a/c/c;->t:Z

    .line 110
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/d/a/a/g;
    .locals 0

    .prologue
    .line 144
    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/d/a/a/c/c;->q:I

    .line 145
    return-object p0
.end method

.method public a(Lcom/d/a/a/b/b;)Lcom/d/a/a/g;
    .locals 1

    .prologue
    .line 156
    iput-object p1, p0, Lcom/d/a/a/c/c;->r:Lcom/d/a/a/b/b;

    .line 157
    if-nez p1, :cond_0

    .line 158
    sget-object v0, Lcom/d/a/a/c/c;->n:[I

    iput-object v0, p0, Lcom/d/a/a/c/c;->p:[I

    .line 162
    :goto_0
    return-object p0

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/d/a/a/b/b;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/c;->p:[I

    goto :goto_0
.end method

.method public a(Lcom/d/a/a/r;)Lcom/d/a/a/g;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/d/a/a/c/c;->s:Lcom/d/a/a/r;

    .line 177
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/d/a/a/c/c;->a(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, p2}, Lcom/d/a/a/c/c;->b(Ljava/lang/String;)V

    .line 204
    return-void
.end method
