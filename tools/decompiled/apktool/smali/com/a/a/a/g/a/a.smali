.class public Lcom/a/a/a/g/a/a;
.super Lcom/a/a/a/g/b;
.source "AddJobMessage.java"


# instance fields
.field private d:Lcom/a/a/a/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/a/a/a/g/i;->g:Lcom/a/a/a/g/i;

    invoke-direct {p0, v0}, Lcom/a/a/a/g/b;-><init>(Lcom/a/a/a/g/i;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/g/a/a;->d:Lcom/a/a/a/r;

    .line 24
    return-void
.end method

.method public a(Lcom/a/a/a/r;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/a/a/a/g/a/a;->d:Lcom/a/a/a/r;

    .line 19
    return-void
.end method

.method public c()Lcom/a/a/a/r;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/a/a/a/g/a/a;->d:Lcom/a/a/a/r;

    return-object v0
.end method
