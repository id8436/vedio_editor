.class public Lcom/a/a/a/g/a/d;
.super Lcom/a/a/a/g/b;
.source "CancelResultMessage.java"


# instance fields
.field d:Lcom/a/a/a/i;

.field e:Lcom/a/a/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/a/a/a/g/i;->b:Lcom/a/a/a/g/i;

    invoke-direct {p0, v0}, Lcom/a/a/a/g/b;-><init>(Lcom/a/a/a/g/i;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/a/a/a/g/a/d;->e:Lcom/a/a/a/h;

    .line 17
    iput-object v0, p0, Lcom/a/a/a/g/a/d;->d:Lcom/a/a/a/i;

    .line 18
    return-void
.end method

.method public a(Lcom/a/a/a/i;Lcom/a/a/a/h;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/a/a/a/g/a/d;->d:Lcom/a/a/a/i;

    .line 22
    iput-object p2, p0, Lcom/a/a/a/g/a/d;->e:Lcom/a/a/a/h;

    .line 23
    return-void
.end method

.method public c()Lcom/a/a/a/i;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/a/a/a/g/a/d;->d:Lcom/a/a/a/i;

    return-object v0
.end method

.method public d()Lcom/a/a/a/h;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/a/a/a/g/a/d;->e:Lcom/a/a/a/h;

    return-object v0
.end method
