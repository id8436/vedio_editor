.class public Lcom/a/a/a/g/a/k;
.super Lcom/a/a/a/g/b;
.source "SchedulerMessage.java"


# instance fields
.field private d:I

.field private e:Lcom/a/a/a/j/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/a/a/a/g/i;->k:Lcom/a/a/a/g/i;

    invoke-direct {p0, v0}, Lcom/a/a/a/g/b;-><init>(Lcom/a/a/a/g/i;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/g/a/k;->e:Lcom/a/a/a/j/c;

    .line 43
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/a/a/a/g/a/k;->d:I

    return v0
.end method

.method public d()Lcom/a/a/a/j/c;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/a/a/a/g/a/k;->e:Lcom/a/a/a/j/c;

    return-object v0
.end method
