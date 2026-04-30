.class public abstract Lcom/a/a/a/j/a;
.super Ljava/lang/Object;
.source "Scheduler.java"


# instance fields
.field private a:Lcom/a/a/a/j/b;

.field private b:Landroid/content/Context;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Landroid/content/Context;Lcom/a/a/a/j/b;)V
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/j/a;->b:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/a/a/a/j/a;->a:Lcom/a/a/a/j/b;

    .line 24
    return-void
.end method

.method public abstract a(Lcom/a/a/a/j/c;)V
.end method

.method public abstract a(Lcom/a/a/a/j/c;Z)V
.end method
