.class public Lcom/a/a/a/g/a/f;
.super Lcom/a/a/a/g/b;
.source "ConstraintChangeMessage.java"


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/a/a/a/g/i;->i:Lcom/a/a/a/g/i;

    invoke-direct {p0, v0}, Lcom/a/a/a/g/b;-><init>(Lcom/a/a/a/g/i;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/g/a/f;->d:Z

    .line 15
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/a/a/a/g/a/f;->d:Z

    .line 23
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/a/a/a/g/a/f;->d:Z

    return v0
.end method
