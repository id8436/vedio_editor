.class public Ld/a/e/r;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/lang/String;

.field c:Le/j;

.field d:Le/i;

.field e:Ld/a/e/s;

.field f:Ld/a/e/aj;

.field g:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    sget-object v0, Ld/a/e/s;->f:Ld/a/e/s;

    iput-object v0, p0, Ld/a/e/r;->e:Ld/a/e/s;

    .line 509
    sget-object v0, Ld/a/e/aj;->a:Ld/a/e/aj;

    iput-object v0, p0, Ld/a/e/r;->f:Ld/a/e/aj;

    .line 517
    iput-boolean p1, p0, Ld/a/e/r;->g:Z

    .line 518
    return-void
.end method


# virtual methods
.method public a()Ld/a/e/j;
    .locals 1

    .prologue
    .line 545
    new-instance v0, Ld/a/e/j;

    invoke-direct {v0, p0}, Ld/a/e/j;-><init>(Ld/a/e/r;)V

    return-object v0
.end method

.method public a(Ld/a/e/s;)Ld/a/e/r;
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Ld/a/e/r;->e:Ld/a/e/s;

    .line 536
    return-object p0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Le/j;Le/i;)Ld/a/e/r;
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Ld/a/e/r;->a:Ljava/net/Socket;

    .line 528
    iput-object p2, p0, Ld/a/e/r;->b:Ljava/lang/String;

    .line 529
    iput-object p3, p0, Ld/a/e/r;->c:Le/j;

    .line 530
    iput-object p4, p0, Ld/a/e/r;->d:Le/i;

    .line 531
    return-object p0
.end method
